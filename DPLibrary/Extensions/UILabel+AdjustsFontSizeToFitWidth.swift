import Foundation
import UIKit

public extension UILabel {
    
    func adjustsFontSizeToFitWidth(estimatedFrameSize size: CGSize, minimumFontSize: CGFloat) {
        var font = self.font ?? UIFont.systemFont(ofSize: 16, weight: .regular)
        var index = font.pointSize
        let text = self.text ?? ""
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: size.width, height: 1000))
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.text = text
        
        while index >= minimumFontSize {
            font = font.withSize(index)
            label.font = font
            label.sizeToFit()
            if label.frame.height <= size.height {
                break
            }
            index -= 1
        }
        
        for word in text.split(separator: " ") {
            let labelWidth = UILabel()
            font = font.withSize(index)
            labelWidth.font = font
            labelWidth.text = String(word)
            labelWidth.sizeToFit()
            while index >= minimumFontSize {
                font = font.withSize(index)
                label.font = font
                label.sizeToFit()
                if label.frame.width <= size.width {
                    break
                }
                index -= 1
            }
        }
        
        self.font = font
        self.text = text
    }
    
}

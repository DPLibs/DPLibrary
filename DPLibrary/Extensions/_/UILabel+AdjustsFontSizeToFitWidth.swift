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
    
    func isTruncated(forNumberOfLines value: Int) -> Bool {
        self.calculateMaxLines() > value
//        self.calculateNumberOfLinesAll()
    }
    
    #warning("remove or not remove")
    func calculateNumberOfLinesAll() -> Int {
        guard let myText = self.text as NSString?, let font = self.font else { return 0 }
        let rect = CGSize(width: self.bounds.width, height: CGFloat.greatestFiniteMagnitude)
        let labelSize = myText.boundingRect(with: rect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
        return Int(ceil(CGFloat(labelSize.height) / self.font.lineHeight))
    }
    
    func calculateMaxLines() -> Int {
        let maxSize = CGSize(width: frame.size.width, height: CGFloat(Float.infinity))
        let charSize = font.lineHeight
        let text = (self.text ?? "") as NSString
        guard let textFont = font else { return 0 }
        let textSize = text.boundingRect(with: maxSize, options: .usesLineFragmentOrigin, attributes: [.font: textFont], context: nil)
        let lines = Int(textSize.height / charSize)
        
        return lines
    }
    
}

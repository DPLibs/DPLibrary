import Foundation
import UIKit

public extension UIImage {
    
    func rounded(_ value: CGFloat) -> UIImage? {
        let rect = CGRect(origin: CGPoint(x: 0, y: 0), size: self.size)
        UIGraphicsBeginImageContextWithOptions(self.size, false, 1)
        UIBezierPath(roundedRect: rect, cornerRadius: value).addClip()
        self.draw(in: rect)
        
        return UIGraphicsGetImageFromCurrentImageContext()
    }
    
}

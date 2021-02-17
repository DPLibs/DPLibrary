import Foundation
import UIKit

public extension UIView {
    
    func toImage(size: CGSize, fillColor: UIColor = .white) -> UIImage? {
        self.bounds = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(size, self.isOpaque, UIScreen.main.scale)
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        context.setFillColor(fillColor.cgColor)
        context.fill(CGRect(origin: .zero, size: size))
        self.layer.render(in: context)
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return img
    }
    
    func toImage(fillColor: UIColor = .white) -> UIImage? {
        self.toImage(size: self.bounds.size)
    }
    
    func getAbsoluteCoordinateToWindow() -> CGRect? {
        self.superview?.convert(self.frame, to: nil)
    }
    
}

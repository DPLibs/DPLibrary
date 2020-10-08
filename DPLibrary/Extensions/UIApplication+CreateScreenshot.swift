import Foundation
import UIKit

public extension UIApplication {
    
    static func createScreenshot() -> UIImage? {
        guard let layer = UIApplication.shared.keyWindow?.layer else { return nil }
        UIGraphicsBeginImageContextWithOptions(layer.frame.size, true, .zero)
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        layer.render(in: context)
        guard let image = UIGraphicsGetImageFromCurrentImageContext() else { return nil }
        UIGraphicsEndImageContext()
        return image
    }
    
}

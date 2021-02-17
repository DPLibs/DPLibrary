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
    
    func openSettingsApplication() -> Bool {
        guard let url = URL(string: UIApplication.openSettingsURLString), self.canOpenURL(url) else { return false }
        self.open(url, options: [:], completionHandler: nil)
        return true
    }
    
    class func topViewController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let nav = base as? UINavigationController {
            return topViewController(base: nav.visibleViewController)
        }
        
        if let tab = base as? UITabBarController {
            if let selected = tab.selectedViewController {
                return topViewController(base: selected)
            }
        }
        
        if let presented = base?.presentedViewController {
            return topViewController(base: presented)
        }
        
        return base
    }
    
    
}

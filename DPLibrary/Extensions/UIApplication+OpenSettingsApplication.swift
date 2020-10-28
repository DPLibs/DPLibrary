import Foundation
import UIKit

public extension UIApplication {
    
    func openSettingsApplication() -> Bool {
        guard let url = URL(string: UIApplication.openSettingsURLString), self.canOpenURL(url) else { return false }
        self.open(url, options: [:], completionHandler: nil)
        return true
    }
    
}

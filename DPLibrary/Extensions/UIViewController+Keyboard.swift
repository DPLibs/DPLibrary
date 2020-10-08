import Foundation
import UIKit

public extension UIViewController {

    func hideKeyboardOnTap() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.didHideKeyboardOnTap))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)
    }

    @objc
    private func didHideKeyboardOnTap() {
        self.view.endEditing(true)
    }
    
}

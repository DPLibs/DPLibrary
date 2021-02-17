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
    
    
    var heightNavigationBar: CGFloat {
        self.navigationController?.navigationBar.frame.height ?? 0.0
    }
    
    var heightStatusBar: CGFloat {
        UIApplication.shared.statusBarFrame.height
    }
    
    var topOffsetScreen: CGFloat {
        self.heightNavigationBar + self.heightStatusBar
    }
    
    static var topOffsetScreen: CGFloat {
        UIApplication.topViewController()?.topOffsetScreen ?? 0.0
    }
    
    static var bottomOffsetScreen: CGFloat {
        UIApplication.topViewController()?.bottomOffsetScreen ?? 0.0
    }
    
    var heightSafeAreaBottom: CGFloat {
        if #available(iOS 11.0, *) {
            return UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0.0
        }
        else {
            return 0.0
        }
    }
    
    var heightTabBar: CGFloat {
        guard !self.hidesBottomBarWhenPushed else { return 0.0 }
        return self.tabBarController?.tabBar.frame.size.height ?? 0.0
    }
    
    var bottomOffsetScreen: CGFloat {
        guard !self.hidesBottomBarWhenPushed else { return self.heightSafeAreaBottom }
        return self.heightTabBar
    }
    
}

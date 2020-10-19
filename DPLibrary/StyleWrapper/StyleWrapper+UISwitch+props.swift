import Foundation
import UIKit

extension StyleWrapper where Element: UISwitch {
    
//    static var accentSwitch: StyleWrapper {
//        return .wrap { swt in
//            swt.onTintColor = AppTheme.accent
//            swt.tintColor = AppTheme.secondary
//            swt.backgroundColor = AppTheme.surfaceVariant
//            swt.layer.cornerRadius = swt.frame.height / 2
//        }
//    }
    
    static func switchOnTintColor(_ value: UIColor) -> StyleWrapper {
        return .wrap { swt in
            swt.onTintColor = value
        }
    }
    
    static func switchTintColor(_ value: UIColor) -> StyleWrapper {
        return .wrap { swt in
            swt.tintColor = value
        }
    }
    
//    static func switchBackgroundColor(_ value: UIColor) -> StyleWrapper {
//        return .wrap { swt in
//            swt.backgroundColor = value
//        }
//    }
    
//    static func switchOnTintColor(_ value: UIColor): StyleWrapper {
//        return .wrap { swt in
//            swt.onTintColor = value
//        }
//    }
    
}

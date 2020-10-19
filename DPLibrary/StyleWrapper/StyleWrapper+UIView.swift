import Foundation
import UIKit

public extension StyleWrapper where Element: UIView {
    
    static func backgroundColorAlpha(_ value: CGFloat) -> StyleWrapper {
        return .wrap { view in
            view.backgroundColor = view.backgroundColor?.withAlphaComponent(value)
        }
    }
    
    static var backgroundColorClear: StyleWrapper {
        return .wrap { view in
            view.backgroundColor = .clear
        }
    }
    
    static var backgroundColorBlack: StyleWrapper {
        return .wrap { view in
            view.backgroundColor = .black
        }
    }
    
    static var backgroundColorWhite: StyleWrapper {
        return .wrap { view in
            view.backgroundColor = .white
        }
    }
    
    static func backgroundColor(_ value: UIColor) -> StyleWrapper {
        return .wrap { view in
            view.backgroundColor = value
        }
    }
    
    static func clipsToBounds(_ value: Bool) -> StyleWrapper {
        return .wrap { view in
            view.clipsToBounds = value
        }
    }
    
    static func borderWidth(_ value: CGFloat) -> StyleWrapper {
        return .wrap { view in
            view.layer.borderWidth = value
        }
    }
    
    static func borderColor(_ value: UIColor) -> StyleWrapper {
        return .wrap { view in
            view.layer.borderColor = value.cgColor
        }
    }
    
}

// MARK: - CornerRadius
extension StyleWrapper where Element: UIView {
    
    static func cornerRadius(_ value: CGFloat) -> StyleWrapper {
        return .wrap { view in
            view.layer.cornerRadius = value
        }
    }
    
    static func cornerRadiusTop(_ value: CGFloat) -> StyleWrapper {
        return .wrap { view in
            view.layer.cornerRadius = value
            view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        }
    }
    
    static func cornerRadiusBottom(_ value: CGFloat) -> StyleWrapper {
        return .wrap { view in
            view.layer.cornerRadius = value
            view.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        }
    }
    
    static func cornerRadiusLeft(_ value: CGFloat) -> StyleWrapper {
        return .wrap { view in
            view.layer.cornerRadius = value
            view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        }
    }
    
    static func cornerRadiusRight(_ value: CGFloat) -> StyleWrapper {
        return .wrap { view in
            view.layer.cornerRadius = value
            view.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        }
    }
    
    static var circle: StyleWrapper {
        return .wrap { view in
            view.layer.cornerRadius = view.frame.height / 2
        }
    }
    
}

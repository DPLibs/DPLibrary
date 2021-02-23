import Foundation

public struct ScreenOffset: OptionSet {
    public let rawValue: Int
    
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
    
    public func calculate(for viewController: UIViewController?) -> CGFloat? {
        guard let viewController = viewController else { return nil }
        
//        switch self {
//        case .heightNavigationBar:
//            viewController.navigationController?.navigationBar.frame.height
//        case .heightStatusBar:
//            UIApplication.shared.statusBarFrame.height
//        case .heightTabBar:
//        }
        
        var result: CGFloat = 0.0
        
        
        
        if let array = self as? [ScreenOffset] {
            for offset in array {
                result += self._calculateSingle(for: viewController, offset: offset)
            }
        } else {
            
        }
        
        return result
    }
    
    private func _calculateSingle(for viewController: UIViewController?, offset: ScreenOffset) -> CGFloat {
        switch offset {
        case .heightNavigationBar:
            return viewController?.navigationController?.navigationBar.frame.height ?? 0.0
        case .heightStatusBar:
            return UIApplication.shared.statusBarFrame.height
        case .heightTabBar:
            return viewController?.tabBarController?.tabBar.frame.size.height ?? 0.0
        default:
            return 0.0
        }
    }
}

public extension ScreenOffset {
    static let heightNavigationBar  = ScreenOffset(rawValue: 1 << 0)
    static let heightStatusBar  = ScreenOffset(rawValue: 1 << 1)
    static let heightTabBar  = ScreenOffset(rawValue: 1 << 2)
}

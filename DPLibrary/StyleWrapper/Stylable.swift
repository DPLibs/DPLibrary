import Foundation
import UIKit

public protocol Stylable { }

public extension Stylable {
    
    static func style(style: @escaping Style<Self>) -> Style<Self> { return style }
    
    func apply(_ style: StyleWrapper<Self>) {
        switch style {
        case let .wrap(style):
            style(self)
        }
    }
    
    func apply(_ styles: [StyleWrapper<Self>]) {
        styles.forEach({ self.apply($0) })
    }
    
}

extension NSObject: Stylable {}

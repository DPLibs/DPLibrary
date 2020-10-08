import Foundation

public protocol DPLoggable {
    var loggingEnabled: Bool { get set }
    
    func logging(_ items: Any...)
}

public extension DPLoggable {
    
    func logging(_ items: Any...) {
        guard self.loggingEnabled else { return }
        var itemsPrint: [String] = ["[\(NSStringFromClass(Self.self as? AnyClass ?? NSObject.self).components(separatedBy: ".").last ?? "")] - "]
        itemsPrint.append(contentsOf: items.map({ "\($0)" }))
        print(itemsPrint)
    }
    
}

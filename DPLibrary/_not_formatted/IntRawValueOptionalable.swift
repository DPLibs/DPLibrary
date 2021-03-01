import Foundation

protocol IntRawValueOptionalable {
    var rawValue: Int { get }
    
    init?(rawValue: Int)
    
    static var defaultValue: Self { get }
    
    static func create(rawValueOptional: Int?) -> Self
    static func create(rawValueOptional: Int?, defaultValue: Self) -> Self
}

extension IntRawValueOptionalable {
    
    static func create(rawValueOptional: Int?) -> Self {
        self.init(rawValue: rawValueOptional ?? self.defaultValue.rawValue) ?? self.defaultValue
    }
    
    static func create(rawValueOptional: Int?, defaultValue: Self) -> Self {
        self.init(rawValue: rawValueOptional ?? defaultValue.rawValue) ?? defaultValue
    }
    
}

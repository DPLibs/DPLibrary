import Foundation

// TODO: - Comments, Readme
public extension Dictionary where Key == AnyHashable {
    
    func stringValue(_ key: String) -> String? {
        self[key] as? String
    }
    
}

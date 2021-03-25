import Foundation

// TODO: - Readme, Comments
public protocol JsonCreatable {
    var keyForJson: String? { get }
    var valueForJson: Any? { get }
    
    func createJson() -> [String: Any]?
    func createJsonOfStrings() -> [String: String]?
    
    func createJsonData() -> Data?
    func createJsonDataOfCodable() -> Data?
}

public extension JsonCreatable {
    
    func createJsonOfStrings() -> [String: String]? {
        guard let json = self.createJson() else { return nil }
        
        var result: [String: String] = [:]
        json.forEach({ result[$0.key] = ($0.value as AnyObject).description })
        
        return result
    }
    
    func createJsonData() -> Data? {
        guard
            let json = self.createJson(),
            let data = try? JSONSerialization.data(withJSONObject: json, options: [])
        else { return nil }
        
        return data
    }
    
    func createJsonDataOfCodable() -> Data? {
        nil
    }
    
}

public extension JsonCreatable where Self: Codable {
    
    func createJson() -> [String: Any]? {
        let encoder = JSONEncoder()
        guard let data = try? encoder.encode(self) else { return nil }
        
        let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments)
        let result = json.flatMap { $0 as? [String: Any] }
        
        return result
    }
    
    func createJsonDataOfCodable() -> Data? {
        let encoder = JSONEncoder()
        guard let data = try? encoder.encode(self) else { return nil }
        
        return data
    }
    
}

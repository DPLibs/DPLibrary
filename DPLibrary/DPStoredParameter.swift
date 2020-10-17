import Foundation
import KeychainSwift

public struct DPStoredParameter<ParameterType: Any> {
    public let keychainKeyPrefix: String
    public let name: String
    public let key: String
    public let store: Store
    
    public enum Store {
        case UserDefaults
        case Keychain
    }
    
    public static func create(_ name: String, store: Store) -> DPStoredParameter<ParameterType> {
        .init(name, store: store)
    }
    
    public init(_ name: String, store: Store) {
        self.keychainKeyPrefix = "\(Bundle.main.bundleIdentifier ?? "")_keychain_"
        self.name = name
        self.key = "stored_parameter_\(name)"
        self.store = store
    }
    
    public func set(_ value: ParameterType) {
        switch self.store {
        case .UserDefaults:
            UserDefaults.standard.set(value, forKey: self.key)
        case .Keychain:
            let keychain = KeychainSwift(keyPrefix: self.keychainKeyPrefix)
            switch value {
            case let string as String:
                keychain.set(string, forKey: self.key)
            case let int as Int:
                keychain.set(int.description, forKey: self.key)
            case let double as Double:
                keychain.set(double.description, forKey: self.key)
            case let float as Float:
                keychain.set(float.description, forKey: self.key)
            case let bool as Bool:
                keychain.set(bool, forKey: self.key)
            case let data as Data:
                keychain.set(data, forKey: self.key)
            default:
                break
            }
        }
    }
    
    public func get() -> ParameterType? {
        switch self.store {
        case .UserDefaults:
            return UserDefaults.standard.object(forKey: self.key) as? ParameterType
        case .Keychain:
            let keychain = KeychainSwift(keyPrefix: self.keychainKeyPrefix)
            switch ParameterType.self {
            case is String.Type:
                return keychain.get(self.key) as? ParameterType
            case is Int.Type:
                guard let string = keychain.get(self.key) else { return nil }
                return Int(string) as? ParameterType
            case is Double.Type:
                guard let string = keychain.get(self.key) else { return nil }
                return Double(string) as? ParameterType
            case is Float.Type:
                guard let string = keychain.get(self.key) else { return nil }
                return Float(string) as? ParameterType
            case is Bool.Type:
                return keychain.getBool(self.key) as? ParameterType
            case is Data.Type:
                return keychain.getData(self.key) as? ParameterType
            default:
                return nil
            }
        }
        
    }
    
    public func remove() {
        switch self.store {
        case .UserDefaults:
            UserDefaults.standard.removeObject(forKey: self.key)
        case .Keychain:
            KeychainSwift(keyPrefix: self.keychainKeyPrefix).delete(self.key)
        }
        
    }
}

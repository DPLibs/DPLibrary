import Foundation

open class NumberFieldValidation: FieldValidation {
    
    open override func gotError(for value: Any?) -> Self? {
        guard let value = value else { return self.required ? self : nil }
        var isValid: Bool
        
        switch value {
        case is Int:
            isValid = true
        case is UInt:
            isValid = true
        case is Double:
            isValid = true
        case is Int8:
            isValid = true
        case is Int16:
            isValid = true
        case is Int32:
            isValid = true
        case is Int64:
            isValid = true
        case is UInt8:
            isValid = true
        case is UInt16:
            isValid = true
        case is UInt32:
            isValid = true
        case is UInt64:
            isValid = true
        case is Float:
            isValid = true
        case is NSNumber:
            isValid = true
        case is NSDecimalNumber:
            isValid = true
        default:
            isValid = false
        }
        
        if let string = value as? String, Int(string) != nil {
            isValid = true
        }
        
        return isValid ? nil : self
    }
    
}

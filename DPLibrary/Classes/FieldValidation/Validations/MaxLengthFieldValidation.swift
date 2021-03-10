import Foundation

open class MaxLengthFieldValidation: FieldValidation {
    
    public let length: Int
    
    public init(length: Int, message: String, mode: FieldValidation.Mode, required: Bool) {
        self.length = length
        super.init(message: message, mode: mode, required: required)
    }
    
    open override func gotError(for value: Any?) -> Self? {
        guard let value = value as? String else { return self.required ? self : nil }
        let isValid = value.count <= self.length
        return isValid ? nil : self
    }
    
}

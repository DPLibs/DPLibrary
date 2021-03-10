import Foundation

open class MinLengthFieldValidation: FieldValidation {
    
    let length: Int
    
    init(length: Int, code: Int, message: String, mode: FieldValidation.Mode, required: Bool) {
        self.length = length
        super.init(code: code, message: message, mode: mode, required: required)
    }
    
    open override func gotError(for value: Any?) -> Self? {
        guard let value = value as? String else { return self.required ? self : nil }
        let isValid = value.count >= self.length
        return isValid ? nil : self
    }
}

import Foundation

open class MatchPredicateFieldValidation: FieldValidation {
    
    let format: String
    
    public init(format: String, code: Int, message: String, mode: FieldValidation.Mode, required: Bool) {
        self.format = format
        super.init(code: code, message: message, mode: mode, required: required)
    }
    
    open override func gotError(for value: Any?) -> Self? {
        guard let value = value as? String, !value.isEmpty else { return self.required ? self : nil }
        let predicate = NSPredicate(format: "SELF MATCHES %@", self.format)
        let isValid = predicate.evaluate(with: value)
        return isValid ? nil : self
    }
}

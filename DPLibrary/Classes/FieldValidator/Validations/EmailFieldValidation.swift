import Foundation

open class EmailFieldValidation: FieldValidation {
    
    open override func gotError(for value: Any?) -> Self? {
        guard let value = value as? String, !value.isEmpty else { return self.required ? self : nil }
        let predicate = NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}")
        let isValid = predicate.evaluate(with: value)
        return isValid ? nil : self
    }
}

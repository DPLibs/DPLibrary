import Foundation

open class DateFieldValidation: FieldValidation {
    
    open override func gotError(for value: Any?) -> Self? {
        guard let value = value else { return self.required ? self : nil }
        return value is Date ? nil : self
    }
    
}

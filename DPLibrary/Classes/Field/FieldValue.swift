import Foundation

open class FieldValue {
    open var value: Any?
    public let validations: FieldValidations
    
    public init(value: Any?, validations: FieldValidations) {
        self.value = value
        self.validations = validations
    }
}

// MARK: - FieldValue + Store
public extension FieldValue {
    
    static func text(text: String?, validations: FieldValidations) -> TextFieldValue {
        .init(text: text, validations: validations)
    }
    
    static func date(date: Date?, validations: FieldValidations) -> DateFieldValue {
        .init(date: date, validations: validations)
    }
    
}

// MARK: - Text value
open class TextFieldValue: FieldValue {
    public var text: String?
    
    open override var value: Any? {
        get {
            self.text
        }
        set {
            self.text = newValue as? String
        }
    }
    
    public init(text: String?, validations: FieldValidations) {
        super.init(value: text, validations: validations)
        self.text = text
    }
    
    public override init(value: Any?, validations: FieldValidations) {
        super.init(value: value, validations: validations)
        self.text = value as? String
    }
}

// MARK: - Date value
open class DateFieldValue: FieldValue {
    public var date: Date?
    
    open override var value: Any? {
        get {
            self.date
        }
        set {
            self.date = newValue as? Date
        }
    }
    
    public init(date: Date?, validations: FieldValidations) {
        super.init(value: date, validations: validations)
        self.date = date
    }
    
    public override init(value: Any?, validations: FieldValidations) {
        super.init(value: value, validations: validations)
        self.date = value as? Date
    }
}

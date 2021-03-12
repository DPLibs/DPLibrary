import Foundation

public protocol FieldsForm {
    associatedtype SetupData
    associatedtype RequestData: Encodable
    
    func setupData(_ data: SetupData)
    func requestData() -> RequestData
}

public class TestSetupData {
    public let test1: String
    public let test2: Int
    
    public init(test1: String, test2: Int) {
        self.test1 = test1
        self.test2 = test2
    }
}

public struct TestRequestData: Encodable {
    let test1: String?
    let test2: Int?
}

public class TestFieldsForm: FieldsForm {
    public let test1: Field<String>
    public let test2: Field<Int>
    
    public init(test1: Field<String>, test2: Field<Int>) {
        self.test1 = test1
        self.test2 = test2
    }
    
    public func setupData(_ data: TestSetupData) {
        self.test1.value = data.test1
        self.test2.value = data.test2
    }
    
    public func requestData() -> TestRequestData {
        .init(test1: self.test1.value, test2: self.test2.value)
    }
    
    public func begin() {
        let mirror = Mirror(reflecting: self)
        var errors: [FieldValidation] = []
        mirror.children.forEach({ child in
            if let field = child.value as? FieldValidatable {
                field.validate(with: .any)
                errors += field.errors
            }
        })
        print("!!!", errors)
    }
    
}

public protocol FieldValidatable {
    var errors: [FieldValidation] { get }
    
    func validate(with mode: FieldValidation.Mode)
}

open class Field<ValueType: Encodable>: Encodable, FieldValidatable {
    public var value: ValueType?
    public let validations: FieldValidations
    
    public var errors: [FieldValidation] = []
    
    enum CodingKeys: String, CodingKey {
        case value = "value"
    }
    
    public init(validations: FieldValidations, value: ValueType?) {
        self.validations = validations
        self.value = value
    }
    
    public func validate(with mode: FieldValidation.Mode) {
        self.errors = validations.gotErrors(for: self.value, with: mode)
    }
}

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
    
    static func text(_ text: String?, validations: FieldValidations) -> TextFieldValue {
        .init(text: text, validations: validations)
    }
    
    static func date(_ date: Date?, validations: FieldValidations) -> DateFieldValue {
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

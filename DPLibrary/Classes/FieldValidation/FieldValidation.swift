import Foundation

open class FieldValidation: LocalizedError {
    
    // MARK: - Static
    public struct Mode: OptionSet {
        public let rawValue: Int
        
        public init(rawValue: Int) {
            self.rawValue = rawValue
        }
        
        public static let realTime = Mode(rawValue: 1 << 0)
        public static let afterFinish = Mode(rawValue: 1 << 1)
        
        public static let any: Mode = [.realTime, .afterFinish]
    }
    
    // MARk: - Props
    public let message: String
    public let mode: Mode
    public let required: Bool
    
    public var errorDescription: String? {
        self.message
    }
    
    public var failureReason: String? {
        self.message
    }
    
    // MARK:  -Init
    public init(message: String, mode: Mode, required: Bool) {
        self.message = message
        self.mode = mode
        self.required = required
    }
    
    // MARK: - Public methods
    open func modeIsMatch(to mode: Mode) -> Bool {
        self.mode.contains(mode) || self.mode == mode || mode.contains(self.mode)
    }
    
    open func gotError(for value: Any?) -> Self? { nil }
    
    open func gotError(for value: Any?, with mode: FieldValidation.Mode) -> Self? {
        guard self.modeIsMatch(to: mode) else { return nil }
        return self.gotError(for: value)
    }
    
    open func isError(for value: Any?, with mode: FieldValidation.Mode) -> Bool {
        self.gotError(for: value, with: mode) != nil
    }
    
    open func isSuccess(for value: Any?, with mode: FieldValidation.Mode) -> Bool {
        self.gotError(for: value, with: mode) == nil
    }
    
    open func validateShouldChangeCharacters(text: String?, in range: NSRange, replacementString string: String) -> Self? {
        guard let text = text, let textRange = Range(range, in: text) else { return nil }
        let updatedText = text.replacingCharacters(in: textRange, with: string)
        return self.gotError(for: updatedText, with: .realTime)
    }
}

// MARK: - FieldValidation + Store
public extension FieldValidation {
    
    static var isEmailDefault: EmailFieldValidation {
        .init(message: "Invalid email", mode: .afterFinish, required: true)
    }
    
    static var isDateDefault: DateFieldValidation {
        .init(message: "Invalid date", mode: .afterFinish, required: true)
    }
    
    static var isNumberDefault: NumberFieldValidation {
        .init(message: "Invalid number", mode: .afterFinish, required: true)
    }
    
    static func maxLengthDefault(length: Int) -> MaxLengthFieldValidation {
        .init(length: length, message: "Max lenght must be \(length.description)", mode: .any, required: true)
    }
    
    static func minLengthDefault(length: Int) -> MinLengthFieldValidation {
        .init(length: length, message: "Min lenght must be \(length.description)", mode: .afterFinish, required: true)
    }
    
    static func matchPredicate(format: String) -> MatchPredicateFieldValidation {
        .init(format: format, message: "Does not match the required format", mode: .afterFinish, required: true)
    }
    
}

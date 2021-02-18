import Foundation

public struct DateFormatType {
    public let dateFormat: String
    
    public init(_ dateFormat: String) {
        self.dateFormat = dateFormat
    }
}

// MARK: - DateFormatType + Constants
public extension DateFormatType {
    
    /// Constant DateFormatType("dd.MM.yyyy").
    ///
    ///     let date = Date()
    ///     print(date.toLocalString(withFormat: .default)) // 01.01.2020
    ///
    static let `default` = DateFormatType("dd.MM.yyyy")
    
    /// Constant DateFormatType("dd MMMM yyyy").
    ///
    ///     let date = Date()
    ///     print(date.toLocalString(withFormat: .dateWithMonthWords)) // 01 января 2020
    ///
    static let dateWithMonthWords = DateFormatType("dd MMMM yyyy")
    
    /// Constant DateFormatType("LLLL").
    ///
    ///     let date = Date()
    ///     print(date.toLocalString(withFormat: .monthFullWords)) // январь
    ///
    static let monthFullWords = DateFormatType("LLLL")
    
    /// Constant DateFormatType("LLLL yyyy").
    ///
    ///     let date = Date()
    ///     print(date.toLocalString(withFormat: .monthFullWordsWithYear)) // январь 2020
    ///
    static let monthFullWordsWithYear = DateFormatType("LLLL yyyy")
    
    /// Constant DateFormatType("eee").
    ///
    ///     let date = Date()
    ///     print(date.toLocalString(withFormat: .weekDayWordsShort)) // пн
    ///
    static let weekDayWordsShort = DateFormatType("eee")
}

// MARK: - DateFormatter + DateFormatType
public extension DateFormatter {
    
    func appendDateFormatType(_ type: DateFormatType) {
        self.dateFormat = type.dateFormat
    }
    
}

// MARK: - Date + DateFormatType
public extension Date {

    /// Returns the date as a string with a given dateFormatType.
    ///
    ///     let date = Date()
    ///     print(date.toLocalString(withFormat: .init("dd.MM.yyyy"))) // 01.01.2020
    ///
    /// - Parameter type: DateFormatType.
    /// - Returns: Date as a string with a given dateFormatType.
    ///
    func toLocalString(withFormatType type: DateFormatType = .default) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.appendDateFormatType(type)
        
        return dateFormatter.string(from: self)
    }
    
}


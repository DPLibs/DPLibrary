import Foundation

/// Struct for storing preset values for dateFormat in DateFromatter.
///
public struct DateFormatType {
    
    /// Variable dateFormat for use in DateFromatter. Example: *dd.MM.yyyy*
    ///
    public let dateFormat: String
    
    /// Variable dateFormat for use in DateFromatter. Example: *dd.MM.yyyy*
    ///
    /// - Parameter dateFormat - Variable dateFormat for use in DateFromatter. Example: *dd.MM.yyyy*
    ///
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



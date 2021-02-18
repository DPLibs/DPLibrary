import Foundation

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

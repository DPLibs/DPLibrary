import Foundation

public extension DateFormatter {
    
    func appendDateFormatType(_ type: DateFormatType) {
        self.dateFormat = type.dateFormat
    }
    
}

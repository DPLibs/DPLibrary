import Foundation

public extension Date {
    
    static func age(birthday: Date) -> Int {
        Calendar.current.dateComponents([.year, .month], from: birthday, to: Date()).year ?? 0
    }
    
    func addYears(_ yearsToAdd: Int) -> Date? {
        var dateComponent = DateComponents()
        dateComponent.year = yearsToAdd
        return Calendar.current.date(byAdding: dateComponent, to: self)
    }
    
}

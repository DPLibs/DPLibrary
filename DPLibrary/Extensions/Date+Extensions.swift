import Foundation

public extension Date {
    
    // MARK: - Modify methods
    
    /// Return calculating age of birthday date.
    /// - Returns: Age value.
    ///
    var calculateAgeFromBirthdayDate: Int {
        Calendar.current.dateComponents([.year, .month], from: self, to: Date()).year ?? 0
    }
    
    /// Return date with adding years.
    /// - Parameter years: Years to add.
    /// - Returns: Date with adding years.
    ///
    func addYears(_ years: Int) -> Date {
        var dateComponent = DateComponents()
        dateComponent.year = years
        
        return Calendar.current.date(byAdding: dateComponent, to: self) ?? Date()
    }
    
    #warning("formating")
    func getWeekDates() -> [Date] {
        let calendar = Calendar.current
        let startOfDay = calendar.startOfDay(for: self)
        let dayOfWeek = calendar.component(.weekday, from: startOfDay)
        
        guard let weekdays = calendar.range(of: .weekday, in: .weekOfYear, for: startOfDay) else { return [] }
        let dates = (weekdays.lowerBound ..< weekdays.upperBound).compactMap { calendar.date(byAdding: .day, value: $0 - dayOfWeek + 1, to: startOfDay) }
        
        return dates
    }
    
//    mutating func addDays(n: Int) {
//        let cal = Calendar.current
//        self = cal.date(byAdding: .day, value: n, to: self)!
//    }

//    func firstDayOfTheMonth() -> Date {
//        return Calendar.current.date(from: Calendar.current.dateComponents([.year,.month], from: self))!
//    }

//    func getMonthDates() -> [Date] {
//        let calendar = Calendar.current
//        guard let range = calendar.range(of: .day, in: .month, for: self), var day = self.startDateOfMonth else { return [] }
//        var days: [Date] = []
//        
//        for _ in 1...range.count {
//            days.append(day)
//            day = day.addDays(1)
//        }
//        return days
//    }
    
    init?(milisecondsIntervalSince1970Optional interaval: Int?) {
        guard let interaval = interaval else { return nil }
        self.init(timeIntervalSince1970: TimeInterval(interaval) / 1000)
    }
    
    var timeIntervalSince1970Miliseconds: TimeInterval {
        self.timeIntervalSince1970 * 1000
    }
    
    func isEqualToDateToGranularityDay(_ date: Date) -> Bool {
        Calendar.current.compare(self, to: date, toGranularity: .day) == .orderedSame
    }
    
    var startDateOfMonth: Date? {
        Calendar.current.date(from: Calendar.current.dateComponents([.year, .month], from: Calendar.current.startOfDay(for: self)))
    }

    var endDateOfMonth: Date? {
        guard let startDateOfMonth = self.startDateOfMonth else { return nil }
        return Calendar.current.date(byAdding: DateComponents(month: 1, day: -1), to: startDateOfMonth)
    }
    
    func toLocalDateYearWordsString() -> String {
        let date = self
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMMM yyyy"
        dateFormatter.locale = Locale.current
        
        // Return Example: 01 января 2020
        return dateFormatter.string(from: date)
    }
    
    func toLocalMonthString() -> String {
        let date = self
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "LLLL"
        dateFormatter.locale = Locale.current
        
        // Return Example: январь
        return dateFormatter.string(from: date)
    }
    
    func toLocalMonthYearString() -> String {
        let date = self
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "LLLL yyyy"
        dateFormatter.locale = Locale.current
        
        // Return Example: январь 2020
        return dateFormatter.string(from: date)
    }
    
    func toLocalWeekDayShortString() -> String {
        let date = self
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "eee"
        dateFormatter.locale = Locale.current
        
        // Return Example: пн
        return dateFormatter.string(from: date)
    }
    
}

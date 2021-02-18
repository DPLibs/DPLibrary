import Foundation

public extension Date {
    
    // MARK: - Create methods
    
    /// Return date created from timeIntervalSince1970 in miliseconds or nil.
    /// - Parameter interval: timeIntervalSince1970 in miliseconds.
    /// - Returns: Created date.
    ///
    static func createFromTimeIntervalSince1970InMiliseconds(_ interval: Int?) -> Date? {
        guard let interval = interval else { return nil }
        return Date(timeIntervalSince1970: TimeInterval(interval) / 1000)
    }
    
    // MARK: - Add methods
    
    /// Return date with adding dateComponent value.
    /// - Parameter component: type of dateComponent.
    /// - Parameter value: value of dateComponent.
    /// - Returns: Date with adding dateComponent.
    ///
    func addingComponent(_ component: Calendar.Component, value: Int) -> Date? {
        Calendar.current.date(byAdding: component, value: value, to: self)
    }
    
    /// Return date with adding days.
    /// - Parameter years: Days to adding.
    /// - Returns: Date with adding days.
    ///
    func addingDays(_ days: Int) -> Date {
        self.addingTimeInterval(TimeInterval(days * 60 * 60 * 24))
    }
    
    /// Return date with adding years.
    /// - Parameter years: Years to adding.
    /// - Returns: Date with adding years.
    ///
    func addingYears(_ years: Int) -> Date? {
        self.addingComponent(.year, value: years)
    }
    
    // MARK: - Get methods
    
    /// Return age from birthday date.
    /// - Returns: Age value.
    ///
    var ageFromBirthday: Int {
        Calendar.current.dateComponents([.year, .month], from: self, to: Date()).year ?? 0
    }
    
    /// Return first date of month.
    /// - Returns: first date of month.
    ///
    var firstDateOfMonth: Date? {
        Calendar.current.date(from: Calendar.current.dateComponents([.year, .month], from: Calendar.current.startOfDay(for: self)))
    }

    /// Return last date of month.
    /// - Returns: last date of month.
    ///
    var lastDateOfMonth: Date? {
        guard let startDateOfMonth = self.firstDateOfMonth else { return nil }
        return Calendar.current.date(byAdding: DateComponents(month: 1, day: -1), to: startDateOfMonth)
    }
    
    /// Returns all dates of the days of the current week.
    /// - Parameter startFromDayNumber: Starting day of the week, default - 1 (monday).
    /// - Returns: Dates of the days of the current week .
    ///
    func getWeekDates(startFromDayNumber: Int = 1) -> [Date] {
        let calendar = Calendar.current
        let startOfDay = calendar.startOfDay(for: self)
        let dayOfWeekNumber = calendar.component(.weekday, from: startOfDay)
        
        guard let weekdaysRange = calendar.range(of: .weekday, in: .weekOfYear, for: startOfDay) else { return [] }
        
        let dates = (weekdaysRange.lowerBound ..< weekdaysRange.upperBound)
            .compactMap { calendar.date(byAdding: .day, value: $0 - dayOfWeekNumber + startFromDayNumber, to: startOfDay) }
        
        return dates
    }
    
    /// Returns all dates of the days of the current month.
    /// - Returns: Dates of the days of the current month .
    ///
    func getMonthDates() -> [Date] {
        guard let range = Calendar.current.range(of: .day, in: .month, for: self), var day = self.firstDateOfMonth else { return [] }
        var days: [Date] = []
        
        for _ in 1...range.count {
            days.append(day)
            day = day.addingDays(1)
        }
        
        return days
    }
    
    // MARK: - Compare methods
    
    /// Returns true if self is equal to date wti granularity to day.
    /// - Parameter date: date for comparison.
    /// - Returns: comparison result.
    ///
    func isEqualToDateToGranularityDay(_ date: Date) -> Bool {
        Calendar.current.compare(self, to: date, toGranularity: .day) == .orderedSame
    }
    
}

import Foundation

/// Struct for determining the time.
///
public struct Time: Comparable, Equatable {
    
    // MARK: - Props
    
    /// Hours value.
    ///
    public let hours: Int
    
    /// Minutes value.
    ///
    public let minutes: Int
    
    /// Seconds value.
    ///
    public let seconds: Int
    
    /// Milliseconds value.
    ///
    public let milliseconds: Int
    
    // MARK: - Init
    
    /// Initialize  default.
    /// - Parameter hours - Hours value.
    /// - Parameter minutes - Minutes value.
    /// - Parameter seconds - Seconds value.
    /// - Parameter milliseconds - Milliseconds value.
    ///
    public init(
        hours: Int,
        minutes: Int,
        seconds: Int,
        milliseconds: Int
    ) {
        self.hours = hours
        self.minutes = minutes
        self.seconds = seconds
        self.milliseconds = milliseconds
    }
    
    // MARK: - Comparable
    public static func < (lhs: Time, rhs: Time) -> Bool {
        guard lhs.hours == rhs.hours else { return lhs.hours < rhs.hours }
        guard lhs.minutes == rhs.minutes else { return lhs.minutes < rhs.minutes }
        guard lhs.seconds >= rhs.seconds else { return lhs.seconds < rhs.seconds }
        return lhs.milliseconds < rhs.milliseconds
    }
    
    // MARK: - Equatable
    public static func == (lhs: Time, rhs: Time) -> Bool {
        lhs.milliseconds == rhs.milliseconds &&
        lhs.seconds == rhs.seconds &&
        lhs.minutes == rhs.minutes &&
        lhs.hours == rhs.hours
    }
}

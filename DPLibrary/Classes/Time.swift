import Foundation

/// Struct for determining the time.
///
public struct Time {
    
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
    
}

// MARK: - Time + Equatable
extension Time: Equatable {
    
    public static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.milliseconds == rhs.milliseconds &&
        lhs.seconds == rhs.seconds &&
        lhs.minutes == rhs.minutes &&
        lhs.hours == rhs.hours
    }
    
}

// MARK: - Time + Comparable
extension Time: Comparable {
    
    public static func < (lhs: Self, rhs: Self) -> Bool {
        guard lhs.hours == rhs.hours else { return lhs.hours < rhs.hours }
        guard lhs.minutes == rhs.minutes else { return lhs.minutes < rhs.minutes }
        guard lhs.seconds >= rhs.seconds else { return lhs.seconds < rhs.seconds }
        return lhs.milliseconds < rhs.milliseconds
    }
    
}

// MARK: - Time + ZeroAdduction
extension Time: ZeroAdduction {
    
    public var zero: Time {
        .init(hours: .zero, minutes: .zero, seconds: .zero, milliseconds: .zero)
    }

}

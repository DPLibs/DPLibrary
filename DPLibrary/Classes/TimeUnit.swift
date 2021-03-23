import Foundation

/// Struct for determining the time interval unit.
///
public struct TimeUnit: Comparable, Equatable {
    
    // MARK: - Props
    
    /// Milliseconds value.
    ///
    public let milliseconds: Double
    
    /// Seconds value.
    ///
    public let seconds: Double
    
    /// Minutes value.
    ///
    public let minutes: Double
    
    /// Hours value.
    ///
    public let hours: Double
    
    // MARK: - Init
    
    /// Initialize  from milliseconds value.
    /// - Parameter milliseconds - Milliseconds value.
    ///
    public init(milliseconds: Double) {
        self.milliseconds = milliseconds
        self.seconds = milliseconds / 1000
        self.minutes = milliseconds / 1000 / 60
        self.hours = milliseconds / 1000 / 60 / 60
    }
    
    /// Initialize  from seconds value.
    /// - Parameter seconds - Seconds value.
    ///
    public init(seconds: Double) {
        self.init(milliseconds: seconds * 1000)
    }
    
    /// Initialize  from minutes value.
    /// - Parameter minutes - Minutes value.
    ///
    public init(minutes: Double) {
        self.init(milliseconds: minutes * 60 * 1000)
    }

    /// Initialize  from hours value.
    /// - Parameter hours - Hours value.
    ///
    public init(hours: Double) {
        self.init(milliseconds: hours * 60 * 60 * 1000)
    }

    // MARK: - Comparable
    public static func < (lhs: TimeUnit, rhs: TimeUnit) -> Bool {
        lhs.milliseconds < rhs.milliseconds &&
        lhs.seconds < rhs.seconds &&
        lhs.minutes < rhs.minutes &&
        lhs.hours < rhs.hours
    }
    
    // MARK: - Equatable
    public static func == (lhs: TimeUnit, rhs: TimeUnit) -> Bool {
        lhs.milliseconds == rhs.milliseconds &&
        lhs.seconds == rhs.seconds &&
        lhs.minutes == rhs.minutes &&
        lhs.hours == rhs.hours
    }
}

// MARK: - TimeUnit + Store
public extension TimeUnit {
    
    // TODO: - Comments
    static var zero: TimeUnit {
        .init(milliseconds: .zero)
    }
    
    /// Create  from milliseconds value.
    /// - Parameter milliseconds - Milliseconds value.
    ///
    static func milliseconds(_ milliseconds: Double) -> TimeUnit {
        .init(milliseconds: milliseconds)
    }

    /// Create  from seconds value.
    /// - Parameter seconds - Seconds value.
    ///
    static func seconds(_ seconds: Double) -> TimeUnit {
        .init(seconds: seconds)
    }

    /// Create  from minutes value.
    /// - Parameter minutes - Minutes value.
    ///
    static func minutes(_ minutes: Double) -> TimeUnit {
        .init(minutes: minutes)
    }

    /// Create  from hours value.
    /// - Parameter hours - Hours value.
    ///
    static func hours(_ hours: Double) -> TimeUnit {
        .init(hours: hours)
    }
    
}

import Foundation

/// Struct for defining the distance.
///
public struct Distance: Comparable, Equatable {
    
    // MARK: - Props
    
    /// Metters value.
    ///
    public let metters: Float
    
    /// Kilometters value.
    ///
    public let kilometters: Float
    
    // MARK: - Init
    
    /// Initialize  from metters value.
    /// - Parameter metters - Metters value.
    ///
    public init(metters: Float) {
        self.metters = metters
        self.kilometters = metters / 1000
    }
    
    /// Initialize  from kilometters value.
    /// - Parameter kilometters - Kilometters value.
    ///
    public init(kilometters: Float) {
        self.metters = kilometters * 1000
        self.kilometters = kilometters
    }
    
    // MARK: - Comparable
    public static func < (lhs: Distance, rhs: Distance) -> Bool {
        lhs.metters < rhs.metters &&
        lhs.kilometters < rhs.kilometters
    }
    
    // MARK: - Equatable
    public static func == (lhs: Distance, rhs: Distance) -> Bool {
        lhs.metters == rhs.metters &&
        lhs.kilometters == rhs.kilometters
    }
}

public extension Distance {
    
    /// Create  from metters value.
    /// - Parameter metters - Metters value.
    ///
    static func metters(_ value: Float) -> Distance {
        .init(metters: value)
    }
    
    /// Create  from kilometters value.
    /// - Parameter kilometters - Kilometters value.
    ///
    static func kilometters(_ value: Float) -> Distance {
        .init(kilometters: value)
    }
    
}

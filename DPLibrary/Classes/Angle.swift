import Foundation
import UIKit

/// Struct for defining the geometric angle.
///
public struct Angle {
    
    // MARK: - Props
    
    /// Degrees value.
    ///
    public let degrees: CGFloat
    
    /// Radians value.
    ///
    public let radians: CGFloat
    
    // MARK: - Init
    
    /// Initialize  from degrees value.
    /// - Parameter degrees - Degrees value.
    ///
    public init(degrees: CGFloat) {
        self.degrees = degrees
        self.radians = degrees.toRadiansByDegrees
    }
    
    /// Initialize  from radians value.
    /// - Parameter radians - Radians value.
    ///
    public init(radians: CGFloat) {
        self.degrees = radians.toDegreesByRadians
        self.radians = radians
    }
}

// MARK: - Angle + Store
public extension Angle {
    
    /// Create  from degrees value.
    /// - Parameter degrees - Degrees value.
    ///
    static func degrees(_ degrees: CGFloat) -> Angle {
        .init(degrees: degrees)
    }
    
    /// Create  from radians value.
    /// - Parameter radians - Radians value.
    ///
    static func radians(_ radians: CGFloat) -> Angle {
        .init(radians: radians)
    }
    
}

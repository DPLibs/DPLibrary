import Foundation
import UIKit

public struct Angle {
    public let degrees: CGFloat
    public let radians: CGFloat
    
    public init(degrees: CGFloat) {
        self.degrees = degrees
        self.radians = degrees.toRadiansByDegrees
    }
    
    public init(radians: CGFloat) {
        self.degrees = radians.toDegreesByRadians
        self.radians = radians
    }
}

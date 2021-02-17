import Foundation
import UIKit

public protocol NumberAdduction {
    var toInt: Int { get }
    var toDouble: Double { get }
    var toFloat: Float { get }
    var toCGFloat: CGFloat { get }
    var toTimeInterval: TimeInterval { get }
    var toNSNumber: NSNumber { get }
    var toRadiansByDegrees: CGFloat { get }
    var toDegreesByRadians: CGFloat { get }
    
    func isValidFractionalNumber(maximumIntegerDigits: Int, maximumFractionDigits: Int) -> Bool
}

public extension NumberAdduction {
    
    func isValidFractionalNumber(maximumIntegerDigits: Int, maximumFractionDigits: Int) -> Bool {
        let formatter = NumberFormatter()
        formatter.allowsFloats = true
        let decimalSeparator = formatter.decimalSeparator ?? "."
        guard let string = formatter.string(from: self.toNSNumber) else { return false }

        let split = string.components(separatedBy: decimalSeparator)
        let integers = split.count == 2 ? split.first ?? "" : string
        let fractions = split.count == 2 ? split.last ?? "" : ""
        return integers.count <= maximumIntegerDigits && fractions.count <= maximumFractionDigits
    }
    
}

/// Int
extension Int: NumberAdduction {
    public var toInt: Int { self }
    public var toDouble: Double { Double(self) }
    public var toFloat: Float { Float(self) }
    public var toCGFloat: CGFloat { CGFloat(self) }
    public var toTimeInterval: TimeInterval { TimeInterval(self) }
    public var toNSNumber: NSNumber { NSNumber(value: self) }
    public var toRadiansByDegrees: CGFloat { self.toCGFloat.toRadiansByDegrees }
    public var toDegreesByRadians: CGFloat { self.toCGFloat.toDegreesByRadians }
}

/// Double
extension Double: NumberAdduction {
    public var toInt: Int { Int(self) }
    public var toDouble: Double { self }
    public var toFloat: Float { Float(self) }
    public var toCGFloat: CGFloat { CGFloat(self) }
    public var toTimeInterval: TimeInterval { TimeInterval(self) }
    public var toNSNumber: NSNumber { NSNumber(value: self) }
    public var toRadiansByDegrees: CGFloat { self.toCGFloat.toRadiansByDegrees }
    public var toDegreesByRadians: CGFloat { self.toCGFloat.toDegreesByRadians }
}

/// Float
extension Float: NumberAdduction {
    public var toInt: Int { Int(self) }
    public var toDouble: Double { Double(self) }
    public var toFloat: Float { Float(self) }
    public var toCGFloat: CGFloat { CGFloat(self) }
    public var toTimeInterval: TimeInterval { TimeInterval(self) }
    public var toNSNumber: NSNumber { NSNumber(value: self) }
    public var toRadiansByDegrees: CGFloat { self.toCGFloat.toRadiansByDegrees }
    public var toDegreesByRadians: CGFloat { self.toCGFloat.toDegreesByRadians }
}

/// CGFloat
extension CGFloat: NumberAdduction {
    public var toInt: Int { Int(self) }
    public var toDouble: Double { Double(self) }
    public var toFloat: Float { Float(self) }
    public var toCGFloat: CGFloat { self }
    public var toTimeInterval: TimeInterval { TimeInterval(self) }
    public var toNSNumber: NSNumber { NSNumber(value: self.toFloat) }
    public var toRadiansByDegrees: CGFloat { self * .pi / 180 }
    public var toDegreesByRadians: CGFloat { self / (.pi / 180) }
}

/// NSNumber
extension NSNumber: NumberAdduction {
    public var toInt: Int { self.intValue }
    public var toDouble: Double { self.doubleValue }
    public var toFloat: Float { self.floatValue }
    public var toCGFloat: CGFloat { self.floatValue.toCGFloat }
    public var toTimeInterval: TimeInterval { self.doubleValue.toTimeInterval }
    public var toNSNumber: NSNumber { self }
    public var toRadiansByDegrees: CGFloat { self.toCGFloat.toRadiansByDegrees }
    public var toDegreesByRadians: CGFloat { self.toCGFloat.toDegreesByRadians }
}

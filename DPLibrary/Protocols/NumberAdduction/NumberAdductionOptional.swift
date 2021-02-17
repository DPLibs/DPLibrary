import Foundation
import UIKit

public protocol NumberAdductionOptional {
    var isNumber: Bool { get }
    
    var toInt: Int? { get }
    var toDouble: Double? { get }
    var toFloat: Float? { get }
    var toCGFloat: CGFloat? { get }
    var toTimeInterval: TimeInterval? { get }
    var toNSNumber: NSNumber? { get }
    var toRadiansByDegrees: CGFloat? { get }
    var toDegreesByRadians: CGFloat? { get }
    
    func isValidFractionalNumber(maximumIntegerDigits: Int, maximumFractionDigits: Int) -> Bool
}

/// String
extension String: NumberAdductionOptional {
    public var isNumber: Bool { self.toInt != nil }
    
    public var toInt: Int? { Int(self) }
    public var toDouble: Double? { Double(self) }
    public var toFloat: Float? { Float(self) }
    public var toCGFloat: CGFloat? { self.toFloat?.toCGFloat }
    public var toTimeInterval: TimeInterval? { TimeInterval(self) }
    
    public var toNSNumber: NSNumber? {
        guard let value = self.toDouble else { return nil }
        return NSNumber(value: value)
    }
    
    public var toRadiansByDegrees: CGFloat? { self.toCGFloat?.toRadiansByDegrees }
    public var toDegreesByRadians: CGFloat? { self.toCGFloat?.toDegreesByRadians }
    
    public func isValidFractionalNumber(maximumIntegerDigits: Int, maximumFractionDigits: Int) -> Bool {
        let formatter = NumberFormatter()
        formatter.allowsFloats = true
        let decimalSeparator = formatter.decimalSeparator ?? "."
        guard formatter.number(from: self) != nil else { return false }

        let split = self.components(separatedBy: decimalSeparator)
        let integers = split.count == 2 ? split.first ?? "" : self
        let fractions = split.count == 2 ? split.last ?? "" : ""
        return integers.count <= maximumIntegerDigits && fractions.count <= maximumFractionDigits
    }
}

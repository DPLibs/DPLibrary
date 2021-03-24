import Foundation

// TODO: - Readme, Comments
public struct TimeStamp {
    
    // MARK: - Props
    public let milliseconds: Double
    public let seconds: Double
    
    // MARK: - Init
    public init(milliseconds: Double) {
        self.milliseconds = milliseconds
        self.seconds = milliseconds / 1000
    }
    
    public init?(millisecondsOptional: Double?) {
        guard let milliseconds = millisecondsOptional else { return nil }
        self.init(milliseconds: milliseconds)
    }
    
    public init(seconds: Double) {
        self.milliseconds = seconds * 1000
        self.seconds = seconds
    }
    
    public init?(secondsOptional: Double?) {
        guard let seconds = secondsOptional else { return nil }
        self.init(seconds: seconds)
    }
}

// MARK: - TimeStamp + Codable
extension TimeStamp: Codable {
    
    // MARK: - Decodable
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let milliseconds = try container.decode(Double.self)
        
        self.init(milliseconds: milliseconds)
    }
    
    // MARK: - Encodable
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.milliseconds)
    }
    
}

// MARK: - TimeStamp + Equatable
extension TimeStamp: Equatable {
    
    public static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.milliseconds == rhs.milliseconds &&
        lhs.seconds == rhs.seconds
    }
    
}

// MARK: - TimeStamp + Comparable
extension TimeStamp: Comparable {
    
    public static func < (lhs: Self, rhs: Self) -> Bool {
        lhs.milliseconds < rhs.milliseconds &&
        lhs.seconds < rhs.seconds
    }
    
}

// MARK: - TimeStamp + ZeroAdduction
extension TimeStamp: ZeroAdduction {
    
    public var zero: TimeStamp {
        .init(milliseconds: .zero)
    }
    
}

// MARK: - TimeStamp + TimeStructAdduction
extension TimeStamp: TimeStructAdduction {
    
    public var toDate: Date {
        .init(timeIntervalSince1970: self.seconds)
    }
    
    public var toTimeStamp: TimeStamp {
        self
    }
    
    public var toTimeUnit: TimeUnit {
        .init(milliseconds: self.milliseconds)
    }
    
}

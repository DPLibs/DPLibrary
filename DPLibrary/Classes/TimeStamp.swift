import Foundation

// TODO: - Readme, Comments
public struct TimeStamp: Codable {
    
    // MARK: - Props
    public let milliseconds: Double
    public let seconds: Double
    
    // MARK: - Init
    public init(milliseconds: Double) {
        self.milliseconds = milliseconds
        self.seconds = milliseconds / 1000
    }
    
    public init(seconds: Double) {
        self.milliseconds = seconds * 1000
        self.seconds = seconds
    }
    
    public init(timeUnit: TimeUnit) {
        self.init(milliseconds: timeUnit.milliseconds)
    }
    
    public init(date: Date) {
        self.init(seconds: date.timeIntervalSince1970)
    }
    
    // MARK: - Decodable
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(Double.self)
        
        switch value {
        case pow(10, 13)...:
            self.init(milliseconds: value)
        default:
            self.init(seconds: value)
        }
    }
    
    // MARK: - Encodable
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.milliseconds)
    }
    
    // MARK: - Public methods
    public func toDate() -> Date {
        .init(timeIntervalSince1970: self.seconds)
    }
    
    public func toTimeUnit() -> TimeUnit {
        .init(milliseconds: self.milliseconds)
    }
}

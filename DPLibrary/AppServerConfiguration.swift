import Foundation

public struct AppServerConfiguration {
    public let restUrl: String
    public let socketUrl: String
    public let target: String
    
    public init(restUrl: String, socketUrl: String, target: String) {
        self.restUrl = restUrl
        self.socketUrl = socketUrl
        self.target = target
    }
}

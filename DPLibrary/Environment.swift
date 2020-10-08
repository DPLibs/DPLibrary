import Foundation

public enum Environment {
    case debug
    case release
    case testFlight
    
    public static var current: Environment {
        #if DEBUG
        return .debug
        #else
        return Bundle.main.appStoreReceiptURL?.lastPathComponent == "sandboxReceipt" ? .testFlight : .release
        #endif
    }
}

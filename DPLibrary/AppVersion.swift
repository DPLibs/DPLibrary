import Foundation

public enum AppVersion {
    
    public static var full: String? {
        guard let version = self.short, let bundle = self.bundle else { return nil }
        return "\(version).\(bundle)"
    }
    
    public static var short: String? {
        Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
    }
    
    public static var bundle: String? {
        Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as? String
    }
    
}

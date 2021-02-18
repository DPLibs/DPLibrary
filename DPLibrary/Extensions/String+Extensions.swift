import Foundation

public extension String {
    
    // MARK: - Capitalize methods
    
    /// Return string with capitalizing first letter.
    /// - Returns: String with capitalizing first letter.
    ///
    func capitalizingFirstLetter() -> String {
        self.prefix(1).capitalized + self.dropFirst()
    }

    /// Capitalize first letter in the string.
    ///
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
    
}

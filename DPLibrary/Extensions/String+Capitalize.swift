import Foundation

public extension String {
    
    func capitalizingFirstLetter() -> String {
        self.prefix(1).capitalized + self.dropFirst()
    }

    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
    
}

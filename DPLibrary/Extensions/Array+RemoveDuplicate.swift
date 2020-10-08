import Foundation

public extension Array where Element: Equatable {
    
    func removingDuplicates() -> [Element] {
        var result: [Element] = []
        return self.filter { element in
            guard !result.contains(element) else { return false }
            result.append(element)
            return true
        }
    }

    mutating func removeDuplicates() {
        self = self.removingDuplicates()
    }
    
}

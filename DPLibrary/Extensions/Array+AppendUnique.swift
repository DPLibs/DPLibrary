import Foundation

public extension Array where Element: Equatable {
    
    mutating func appendUnique(_ newElement: Element) {
        guard !self.contains(newElement) else { return }
        self.append(newElement)
    }
    
    mutating func appendUnique(contentsOf newElements: [Element]) {
        let appendList = newElements.filter({ !self.contains($0) })
        self.append(contentsOf: appendList)
    }

}

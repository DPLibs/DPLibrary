import Foundation

public extension Array {
    
    mutating func removeAll(indices: [Int]) -> [Element] {
        let removedElements = indices.map { self[$0] }
        for index in indices.sorted(by: >) {
            self.remove(at: index)
        }
        return removedElements
    }
    
}

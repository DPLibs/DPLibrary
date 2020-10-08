import Foundation

public extension Collection {
    
    func element(at index: Index) -> Element? {
        self.indices.contains(index) ? self[index] : nil
    }
    
    func element<T>(at index: Index, isAn type: T.Type) -> T? {
        self.indices.contains(index) ? self[index] as? T : nil
    }
    
}

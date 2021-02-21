//
//  ArrayExtensions.swift
//  DPLibrary
//
//  Created by Дмитрий Поляков on 17.02.2021.
//

import Foundation

public extension Array {
    
    // MARK: - Remove elements methods
    
    /// Return array with removing all elements at indices.
    /// - Returns: Old array with removing all elements at indices.
    ///
    mutating func removingAll(at indices: [Int]) -> [Element] {
        let removedElements = indices.map { self[$0] }
        
        for index in indices.sorted(by: >) {
            self.remove(at: index)
        }
        
        return removedElements
    }

    /// Remove all elemants at indices.
    ///
    mutating func removeAll(at indices: [Int]) {
        self = self.removingAll(at: indices)
    }
    
}

// MARK: - Array Element is Equatable
public extension Array where Element: Equatable {
    
    // MARK: - Append elements methods
    
    /// Return old array with newElement at the end of the array if there isn't one already.
    /// - Parameter newElement: The element to append to the array.
    /// - Returns: Old array with appending newElement or not.
    ///
    func appendingUnique(_ newElement: Element) -> [Element] {
        var result = self
        
        guard !self.contains(newElement) else { return result }
        result.append(newElement)
        
        return result
    }
    
    /// Adds a newElement at the end of the array if there isn't one already.
    /// - Parameter newElement: The element to append to the array.
    ///
    mutating func appendUnique(_ newElement: Element) {
        self = self.appendingUnique(newElement)
    }
    
    /// Return old array with newElements at the end of the array if there isn't one already.
    /// - Parameter newElements: The elements to append to the array.
    /// - Returns: Old array with appending newElements or not.
    ///
    func appendingUnique(contentsOf newElements: [Element]) -> [Element] {
        var result = self
        
        let appendList = newElements.filter({ !self.contains($0) })
        result.append(contentsOf: appendList)
        
        return result
    }
    
    /// Adds the elements of a sequence to the end of the array. if there isn't one already.
    /// - Parameter newElements: The elements to append to the array.
    ///
    mutating func appendUnique(contentsOf newElements: [Element]) {
        self = self.appendingUnique(contentsOf: newElements)
    }
    
    // MARK: - Push methods
    
    /// Retrun array  with newElement at the end of the array  if there isn't one already. Keeping the number of elements.
    /// - Parameter newElement: The element to append to the array.
    /// - Parameter keepingCount: The stored length of the array.
    /// - Parameter makeElementsUnique: Remove duplicates in the array.
    /// - Returns: Old array with appending newElement
    ///
    func pushing(_ newElement: Element, keepingCount: Int, makeElementsUnique : Bool) -> [Element] {
        var array = self
        array.append(newElement)
        
        if makeElementsUnique {
            array.removeDuplicates()
        }
        
        if array.count > 10 {
            array = Array(array.suffix(keepingCount))
        }
        
        return array
    }
    
    
    /// Adds a newElement at the end of the array  if there isn't one already. Keeping the number of elements.
    /// - Parameter newElement: The element to append to the array.
    /// - Parameter keepingCount: The stored length of the array.
    /// - Parameter makeElementsUnique: Remove duplicates in the array.
    ///
    mutating func push(_ newElement: Element, keepingCount: Int, makeElementsUnique : Bool) {
        self = self.pushing(newElement, keepingCount: keepingCount, makeElementsUnique: makeElementsUnique)
    }
    
    // MARK: - Remove elements methods
    
    /// Return array with removing all not unique elements.
    /// - Returns: Old array with removing all not unique elements.
    ///
    func removingDuplicates() -> [Element] {
        var result: [Element] = []
        
        return self.filter { element in
            guard !result.contains(element) else { return false }
            result.append(element)
            return true
        }
    }

    /// Remove all not unique elements.
    ///
    mutating func removeDuplicates() {
        self = self.removingDuplicates()
    }
    
    // MARK: - Get methods
    
    /// Return indices of elements.
    /// - Parameter elements: Elements to search indices.
    /// - Returns: Indices of elements.
    ///
    func getIndicesOfElements(_ elements: [Element]) -> [Index] {
        var result: [Index] = []
        
        elements.forEach({ element in
            guard let index = self.firstIndex(of: element), !result.contains(index) else { return }
            result.append(index)
        })
        
        return result
    }
    
    /// Return elements of indices.
    /// - Parameter indexes: indices to search elements.
    /// - Returns: elements of indices.
    ///
    func getElementsOfIndices(_ indices: [Index]) -> [Element] {
        var result: [Element] = []
        
        indices.forEach({ index in
            guard self.indices.contains(index) else { return }
            let element = self[index]
            
            guard !result.contains(element) else { return }
            result.append(element)
        })
        
        return result
    }
    
}
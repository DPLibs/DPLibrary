import Foundation

public extension NSMutableAttributedString {
    
    static func create(attributedStringList: [NSAttributedString]) -> NSMutableAttributedString {
        let string = NSMutableAttributedString()
        attributedStringList.forEach({ string.append($0) })
        return string
    }
    
}

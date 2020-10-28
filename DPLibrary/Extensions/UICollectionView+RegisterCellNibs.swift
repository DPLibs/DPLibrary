import Foundation
import UIKit

extension UICollectionView {
    
    func registerCellNibs(_ cellClasses: [AnyClass]) {
        cellClasses.forEach({ cellClass in
            let identifier = NSStringFromClass(cellClass).components(separatedBy: ".").last ?? ""
            let nib = UINib(nibName: identifier, bundle: nil)
            self.register(nib, forCellWithReuseIdentifier: identifier)
        })
    }
    
}

import Foundation
import UIKit

// TODO: - Comments, Readme
public extension UITableViewCell {
    
    var table: UITableView? {
        self.superview as? UITableView
    }
    
    func reloadCellView() {
        self.table?.performBatchUpdates(nil, completion: nil)
    }
    
}

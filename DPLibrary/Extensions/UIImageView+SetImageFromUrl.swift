import Foundation
import UIKit
import Kingfisher

public extension UIImageView {
    
    func setImageFromUrl(_ url: URL?, placeholder: UIImage?, completion: ((Bool) -> Void)? = nil) {
        self.kf.indicatorType = .activity
        guard let url = url else {
            self.kf.indicatorType = .none
            self.image = placeholder
            completion?(false)
            return
        }

        self.kf.setImage(with: url, placeholder: nil, options: [.diskCacheExpiration(.seconds(600)), .transition(.none)], progressBlock: nil) { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let value):
                self.image = value.image
                completion?(true)
            case .failure:
                self.image = placeholder
                completion?(false)
            }
        }
    }
    
}

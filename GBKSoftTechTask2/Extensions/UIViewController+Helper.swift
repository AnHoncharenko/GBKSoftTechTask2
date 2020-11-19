//
//  UIViewController+Helper.swift
//  GBKSoftTechTask2
//
//  Created by Anton Honcharenko on 18.11.2020.
//

import UIKit

extension UIViewController {
    static func instanciate(_ storyboard: UIStoryboard) -> Self {
        return storyboard.instantiateViewController(withIdentifier: String(describing: Self.self)) as! Self
    }

    func embedInNavigation() -> UINavigationController {
        return UINavigationController(rootViewController: self)
    }
}

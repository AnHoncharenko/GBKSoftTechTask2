//
//  UIView+Helper.swift
//  GBKSoftTechTask2
//
//  Created by Anton Honcharenko on 18.11.2020.
//

import UIKit

extension UIView {
    static func makeFromNib(_ name: String? = nil) -> Self {
        let name = name ?? String(describing: Self.self)
        return _makeFromNib(name)
    }

    private static func _makeFromNib<T: UIView>(_ name: String) -> T {
        let nib = UINib(nibName: name, bundle: .main)
        return nib.instantiate(withOwner: nil, options: nil)[0] as! T
    }
}

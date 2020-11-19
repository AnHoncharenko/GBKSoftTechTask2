//
//  UIColor+Helper.swift
//  GBKSoftTechTask2
//
//  Created by Anton Honcharenko on 18.11.2020.
//

import UIKit

extension UIColor {
    static func rgb(_ red: Int, _ green: Int, _ blue: Int, alpha: CGFloat = 1) -> UIColor {
        return UIColor(red: CGFloat(red) / 255, green: CGFloat(green) / 255, blue: CGFloat(blue) / 255, alpha: alpha)
    }
}

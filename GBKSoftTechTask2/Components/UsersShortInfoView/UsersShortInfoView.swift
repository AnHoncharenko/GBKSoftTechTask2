//
//  UsersShortInfoView.swift
//  GBKSoftTechTask2
//
//  Created by Anton Honcharenko on 18.11.2020.
//

import UIKit

class UsersShortInfoView: UIView {
    @IBOutlet weak var circularProgressView: CircularProgressView!

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .clear
        circularProgressView.setProgressWithAnimation(duration: 1, value: 0.5)
    }
}

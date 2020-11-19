//
//  VerticalProgressView.swift
//  GBKSoftTechTask2
//
//  Created by Anton Honcharenko on 18.11.2020.
//

import UIKit

class VerticalProgressView: UIView {
    @IBOutlet weak var progressContainerView: UIView!
    @IBOutlet weak var progressView: UIView!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var progressHeightConstrain: NSLayoutConstraint!

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .clear
        progressView.layer.cornerRadius = 4
        progressContainerView.layer.cornerRadius = 4
    }

}

//
//  TotalUserNowCell.swift
//  GBKSoftTechTask2
//
//  Created by Anton Honcharenko on 18.11.2020.
//

import Foundation
import UIKit

class TotalUserNowCell: UITableViewCell {
    @IBOutlet weak var contentStackView: UIStackView!
    @IBOutlet weak var circularProgressView: CircularProgressView!

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        circularProgressView.setProgressWithAnimation(duration: 1, value: 0.5)
    }
}

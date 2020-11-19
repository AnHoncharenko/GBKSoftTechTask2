//
//  UsersCountContainerCell.swift
//  GBKSoftTechTask2
//
//  Created by Anton Honcharenko on 18.11.2020.
//

import UIKit

class UsersCountContainerCell: UITableViewCell {
    @IBOutlet weak var itemsStackView: UIStackView!

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        backgroundColor = .clear
    }

    func setItems() {
        guard itemsStackView.arrangedSubviews.isEmpty else { return }
        for _ in 0...3 {
            itemsStackView.addArrangedSubview(UsersShortInfoView.makeFromNib())
        }
    }
}

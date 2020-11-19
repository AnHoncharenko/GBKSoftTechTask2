//
//  ChartForYearsCell.swift
//  GBKSoftTechTask2
//
//  Created by Anton Honcharenko on 18.11.2020.
//

import UIKit

class ChartForYearsCell: UITableViewCell {
    @IBOutlet weak var labelsContainer: UIStackView!
    @IBOutlet weak var yearsProgresContainer: UIStackView!

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        backgroundColor = .clear
    }

    func setInfo(models: [YearStatistic]) {
        guard yearsProgresContainer.arrangedSubviews.isEmpty else { return }
        models.forEach({
            let view = VerticalProgressView.makeFromNib()
            yearsProgresContainer.addArrangedSubview(view)
            layoutIfNeeded()
            view.yearLabel.text = $0.year
            view.progressHeightConstrain.constant = (view.progressContainerView.frame.height / 100) * CGFloat($0.usersCount)
        })
    }
}

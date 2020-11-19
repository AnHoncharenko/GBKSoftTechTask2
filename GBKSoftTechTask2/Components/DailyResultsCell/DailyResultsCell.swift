//
//  DailyResultsCell.swift
//  GBKSoftTechTask2
//
//  Created by Anton Honcharenko on 18.11.2020.
//

import UIKit

class DailyResultsCell: UITableViewCell {
    @IBOutlet weak var daysStackView: UIStackView!

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        backgroundColor = .clear
    }

    func setDaysInfo(models: [DayMoneyStatistic]) {
        models.forEach({
            let view = DaySalesInfoView.makeFromNib()
            view.dayLabel.text = $0.day
            view.moneyLabel.text = $0.money
            daysStackView.addArrangedSubview(view)
            layoutIfNeeded()
        })
    }

}

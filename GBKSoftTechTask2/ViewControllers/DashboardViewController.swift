//
//  DashboardViewController.swift
//  GBKSoftTechTask2
//
//  Created by Anton Honcharenko on 18.11.2020.
//

import UIKit

class DashboardViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var data: [Table] = []

    enum Table {
        case usersShortInfo
        case chartUsers([YearStatistic])
        case dailySales([DayMoneyStatistic])
    }

    static func present(on viewController: UIViewController) {
        let vc = instanciate(UIStoryboard.init(name: "Main", bundle: .main))
        viewController.navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        UsersCountContainerCell.registerCell(on: tableView)
        DailyResultsCell.registerCell(on: tableView)
        ChartForYearsCell.registerCell(on: tableView)
        tableView.rowHeight = UITableView.automaticDimension
        fetchData()
    }

    func fetchData() {
        data.append(.usersShortInfo)
        data.append(.chartUsers(DataService.shared.allYearsStatistic))
        data.append(.dailySales(DataService.shared.allDaysMoneyStatistic))
    }

    @IBAction func onBackButtonPress(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}

extension DashboardViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let resultCell: UITableViewCell
        switch data[indexPath.row] {
        case .usersShortInfo:
            let cell = UsersCountContainerCell.dequeue(from: tableView, for: indexPath)
            cell.setItems()
            resultCell = cell

        case .chartUsers(let models):
            let cell = ChartForYearsCell.dequeue(from: tableView, for: indexPath)
            cell.setInfo(models: models)
            cell.labelsContainer.isHidden = true
            resultCell = cell
            
        case .dailySales(let models):
            let cell = DailyResultsCell.dequeue(from: tableView, for: indexPath)
            cell.setDaysInfo(models: models)
            resultCell = cell
        }
        
        return resultCell
    }
}

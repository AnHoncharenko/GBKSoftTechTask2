//
//  ChartViewController.swift
//  GBKSoftTechTask2
//
//  Created by Anton Honcharenko on 18.11.2020.
//

import UIKit

class ChartViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var data: [Table] = []

    enum Table {
        case userNowStatistic
        case chartUsers([YearStatistic])
    }

    static func present(on viewController: UIViewController) {
        let vc = instanciate(UIStoryboard.init(name: "Main", bundle: .main))
        viewController.navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        TotalUserNowCell.registerCell(on: tableView)
        ChartForYearsCell.registerCell(on: tableView)
        tableView.rowHeight = UITableView.automaticDimension
        fetchData()
    }

    func fetchData() {
        data.append(.userNowStatistic)
        data.append(.chartUsers(DataService.shared.allYearsStatistic))
    }

    @IBAction func onBackButtonPress(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}

extension ChartViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let resultCell: UITableViewCell
        switch data[indexPath.row] {
        case .userNowStatistic:
            let cell = TotalUserNowCell.dequeue(from: tableView, for: indexPath)
            resultCell = cell

        case .chartUsers(let models):
            let cell = ChartForYearsCell.dequeue(from: tableView, for: indexPath)
            cell.setInfo(models: models)
            resultCell = cell
        }
        return resultCell
    }
}

//
//  MainViewController.swift
//  GBKSoftTechTask2
//
//  Created by Anton Honcharenko on 18.11.2020.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onRegisterScreenButtonPress(_ sender: Any) {
        RegistrationViewController.present(on: self)
    }

    @IBAction func onDashboardScreenButtonPress(_ sender: Any) {
        DashboardViewController.present(on: self)
    }

    @IBAction func onChartScreenButtonPress(_ sender: Any) {
        ChartViewController.present(on: self)
    }

}


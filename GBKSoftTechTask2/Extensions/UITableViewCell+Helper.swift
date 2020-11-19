//
//  UITableViewCell+Helper.swift
//  GBKSoftTechTask2
//
//  Created by Anton Honcharenko on 18.11.2020.
//

import UIKit

extension UITableViewCell {
    static func registerCell(on tableView: UITableView) {
        let nib = UINib(nibName: String(describing: Self.self), bundle: .main)
        tableView.register(nib, forCellReuseIdentifier: String(describing: Self.self))
    }

    static func dequeue(from tableView: UITableView, for indexPath: IndexPath) -> Self {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: Self.self), for: indexPath)
        return cell as! Self
    }
}

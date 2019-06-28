//
//  UITableView+Cell.swift
//  StartKit
//
//  Created by Dima Kalachniuk on 28/06/2019.
//  Copyright © 2019 StartKit. All rights reserved.
//

import Foundation

extension UITableView {

    /**
     registers a cell in the tableView.

     - Parameter cell: cell object.
     */
    func register(cell: Cell) {
        register(cell.nib, forCellReuseIdentifier: cell.identifier)
    }

    /**
     dequeues a cell from the tableView

     - Parameter cell: cell object.
     - Returns: Generic UITableViewCell.
     */
    func dequeue<T: UITableViewCell>(cell: Cell, indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: cell.identifier,
                                             for: indexPath) as? T else {
            fatalError("\(T.classForCoder()) is not registered")
        }
        return cell
    }
}

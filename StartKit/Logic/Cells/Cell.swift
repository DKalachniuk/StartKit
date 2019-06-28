//
//  Cell.swift
//  StartKit
//
//  Created by Dima Kalachniuk on 28/06/2019.
//  Copyright © 2019 StartKit. All rights reserved.
//

import UIKit

/**
 Structure Cell  is used to represent your custom cell

 Example of usage:

 `static let myBeautifulCell = Cell(identifier: "MyBeautifulCell")`
 `tableView.register(Cell.myBeautifulCell)`
 `let cell: MyBeautifulCell = tableView.dequeue(cell: Cell.myBeautifulCell, indexPath: indexPath)`
*/
public struct Cell {
    public let identifier: String
    public let nib: UINib

    /**
     Initializes a cell

     - Parameter identifier: identifier of the cell.
     - Parameter bundle: bundle where xib of the cell is stored.
     */
    public init(identifier: String, bundle: Bundle? = nil) {
        self.identifier = identifier
        self.nib = UINib(nibName: identifier, bundle: bundle)
    }
}

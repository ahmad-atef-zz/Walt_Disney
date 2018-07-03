//
//  TableViewCellConfigurator.swift
//  Walt Disney
//
//  Created by Ahmad Atef on 03.07.18.
//  Copyright © 2018 Ahmad Atef. All rights reserved.
//

import UIKit

//TODO: Upadte CellType: UIView to be CellType: UITableViewCell

class TableViewCellConfigurator <CellType: GenericCell, DataType>: GenericCellConfigurator where CellType.DataType == DataType, CellType: UIView {

    var cellIdentefier: String = ""
    let item: DataType
    init(item: DataType) {
        self.item = item
    }

    func confgiure(cell: UIView) {
        if let cell = cell as? CellType {
            cell.configure(data: item)
        }
    }
}

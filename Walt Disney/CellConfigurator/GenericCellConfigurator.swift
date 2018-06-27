//
//  GenericCellConfigurator.swift
//  Walt Disney
//
//  Created by Ahmad Atef on 08.05.18.
//  Copyright © 2018 Ahmad Atef. All rights reserved.
//

import Foundation
import UIKit

protocol GenericCellConfigurator {
    var identefier: String { get }
    func confgiure(cell: UIView)
}

class TableViewCellConfigurator: GenericCellConfigurator {
    var identefier: String = ""

    func confgiure(cell: UIView) {

    }

}

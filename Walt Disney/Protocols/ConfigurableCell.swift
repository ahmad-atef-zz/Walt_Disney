//
//  ConfigurableCell.swift
//  Walt Disney
//
//  Created by Ahmad Atef on 25.04.18.
//  Copyright © 2018 Ahmad Atef. All rights reserved.
//

import Foundation


protocol GenericCell {
    associatedtype DataCell
    func configure(withData data: DataCell)
}

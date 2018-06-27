//
//  AdCell.swift
//  Walt Disney
//
//  Created by Ahmad Atef on 20.06.18.
//  Copyright © 2018 Ahmad Atef. All rights reserved.
//

import UIKit

class WarningCell: UITableViewCell {
    let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 70, height: 40))
}

extension WarningCell: GenericCell {
    func configure(data message: String) {
        self.addSubview(messageLabel)
        messageLabel.text = message
    }
}

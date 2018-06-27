//
//  GenralExtentions.swift
//  Walt Disney
//
//  Created by Ahmad Atef on 02.03.18.
//  Copyright © 2018 Ahmad Atef. All rights reserved.
//

import Foundation

public extension String {
    func contentOfFile() -> String {
        if let path = Bundle.main.path(forResource: self, ofType: nil) {
            do {
                let text = try String(contentsOfFile: path, encoding: String.Encoding.utf8)
                return text
            } catch { print("Failed to read text from bundle file \(self)") }
        } else { print("Failed to load file from bundle \(self)") }
        return ""
    }
}

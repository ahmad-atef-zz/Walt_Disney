//
//  Rating.swift
//  Walt Disney
//
//  Created by Ahmad Atef on 02.03.18.
//  Copyright © 2018 Ahmad Atef. All rights reserved.
//

import Foundation

// To parse the JSON, add this file to your project and do:
//
//   let rating = try Rating(json)

import Foundation

struct Rating: Codable {
    let average: Double
    let max, count: Int
}

// MARK: Convenience initializers

extension Rating {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Rating.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

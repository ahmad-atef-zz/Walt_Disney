//
//  Movie.swift
//  Walt Disney
//
//  Created by Ahmad Atef on 11/1/17.
//  Copyright © 2017 Ahmad Atef. All rights reserved.
//

import Foundation
import SwiftyJSON

enum Genre: String {
    case carton = "catroon"
    case drama = "drama"
    case romance = "romance"
    case action = "action"
    case unknown = ""
    case kids = "kids"
    case family = "family"
}

struct Movie: Codable {
    let title: String
    let imageCover: String
    let rating: Rating
    let story: String
    let releaseDate: String
    let genres: [String]

}

// MARK: Convenience initializers

extension Movie {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Movie.self, from: data)
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

//
//  SeriesList.swift
//  marvelapp
//
//  Created by Diego Perez Salas on 07/04/20.
//

import Foundation

struct SeriesList {
    
    let available: Int?
    let returned: Int?
    let collectionURI: String?
    let items: [SeriesSummary]?
    
    enum CodingKeys: String, CodingKey {
        case available
        case returned
        case collectionURI
        case items
    }
}

extension SeriesList: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.available = try container.decodeIfPresent(Int.self, forKey: .available)
        self.returned = try container.decodeIfPresent(Int.self, forKey: .returned)
        self.collectionURI = try container.decodeIfPresent(String.self, forKey: .collectionURI)
        self.items = try container.decodeIfPresent([SeriesSummary].self, forKey: .items)
    }
}

extension SeriesList: Encodable {
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(available, forKey: .available)
        try container.encodeIfPresent(collectionURI, forKey: .collectionURI)
        try container.encodeIfPresent(returned, forKey: .returned)
        try container.encodeIfPresent(items, forKey: .items)
    }
}

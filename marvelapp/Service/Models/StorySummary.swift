//
//  StorySummary.swift
//  marvelapp
//
//  Created by Diego Perez Salas on 07/04/20..
//

import Foundation

struct StorySummary {
    
    let resourceURI: String?
    let name: String?
    let type: String?
    
    enum CodingKeys: String, CodingKey {
        case resourceURI
        case name
        case type
    }
}

extension StorySummary: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.resourceURI = try container.decodeIfPresent(String.self, forKey: .resourceURI)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.type = try container.decodeIfPresent(String.self, forKey: .type)
    }
}

extension StorySummary: Encodable {
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(resourceURI, forKey: .resourceURI)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(type, forKey: .type)
    }
}

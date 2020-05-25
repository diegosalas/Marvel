//
//  CatalogItemCollectionViewCellDTO.swift
//  marvelapp
//
//  Created by Diego Perez Salas on 05/04/20.
//  Copyright © 2020 Diego Perez Salas. All rights reserved.
//

import Foundation

struct CatalogItemCollectionViewCellDTO {
    let title: String?
    let imageURL: URL?
    let favorited: Bool
}

extension CatalogItemCollectionViewCellDTO {
    init(character: Character, favorited: Bool) {
        self.title = character.name
        self.imageURL = character.thumbnail?.url
        self.favorited = favorited
    }
}

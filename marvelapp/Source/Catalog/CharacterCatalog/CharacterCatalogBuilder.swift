//
//  CharacterCatalogBuilder.swift
//  marvelapp
//
//  Created by  Diego Perez Salas 07/04/20.
//

import Foundation

class CharacterCatalogBuilder {
    
    private weak var router: CharacterCatalogRouterable?
    
    init(router: CharacterCatalogRouterable) {
        self.router = router
    }
    
    func build() -> CharacterCatalogViewController {
        let logic = CharacterCatalogLogic(router: router)
        let viewModel = CharacterCatalogViewModel(logic: logic)
        return CharacterCatalogViewController(viewModel: viewModel)
    }
    
}

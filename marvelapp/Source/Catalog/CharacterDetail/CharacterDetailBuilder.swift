//
//  CharacterDetailBuilder.swift
//  marvelapp
//
//  Created by  Diego Perez Salas 07/04/20.
//

import Foundation

class CharacterDetailBuilder {
    
    private weak var router: CharacterDetailRouterable?
    
    var character: Character
    
    init(router: CharacterDetailRouterable, character: Character) {
        self.router = router
        self.character = character
    }
    
    func build() -> CharacterDetailViewController {
        let logic = CharacterDetailLogic(router: router)
        let viewModel = CharacterDetailViewModel(logic: logic, character: character)
        return CharacterDetailViewController(viewModel: viewModel)
    }
    
}

//
//  CharacterContentTableViewCell.swift
//  marvelapp
//
//  Created by Diego Perez Salas on 07/04/20.
//  Copyright ©  2020 Diego Perez Salas. All rights reserved.
//

import UIKit

class CharacterContentTableViewCell: UITableViewCell {
    @IBOutlet weak var contentImageView: NetworkImageLoader!
    @IBOutlet weak var titleLabel: UILabel!
}

extension CharacterContentTableViewCell: ViewConfigurable {
    
    typealias ViewModel = CharacterContentTableViewCellDTO
    
    func configure(with viewModel: CharacterContentTableViewCellDTO?) {
        titleLabel.text = viewModel?.title
        if let url = viewModel?.imageURL {
           contentImageView.loadImage(from: url)
        }
    }
}

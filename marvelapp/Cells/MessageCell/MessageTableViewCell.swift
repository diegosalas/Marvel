//
//  MessageTableViewCell.swift
//  marvelapp
//
//  Created by FDiego Perez Salas on 20/05/20.
//  Copyright © 2020 Diego Perez Salas. All rights reserved.
//

import UIKit

class MessageTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
}

extension MessageTableViewCell: ViewConfigurable {
    
    typealias ViewModel = MessageTableViewCellDTO
    
    func configure(with viewModel: MessageTableViewCellDTO?) {
        titleLabel.text = viewModel?.title
    }
    
}

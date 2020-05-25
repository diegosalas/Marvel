//
//  ActionTableViewCell.swift
//  marvelapp
//
//  Created by Diego Perez Salas on 20/05/20.
//  Copyright © 2020 Diego Perez Salas. All rights reserved.
//

import UIKit

class ActionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var actionTitle: UILabel!
    
}


extension ActionTableViewCell: ViewConfigurable {
    
    typealias ViewModel = ActionTableViewCellDTO
    
    func configure(with viewModel: ActionTableViewCellDTO?) {
        actionTitle.text = viewModel?.actionTitle
    }
    
}


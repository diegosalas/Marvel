//
//  ViewConfigurable.swift
//  marvelapp
//
//  Created by Diego Perez Salas on 20/05/20.
//  Copyright © 2020 Diego Perez Salas. All rights reserved.
//

import UIKit

protocol ViewConfigurable {
    
    associatedtype ViewModel
    
    func configure(with viewModel: ViewModel?)
}

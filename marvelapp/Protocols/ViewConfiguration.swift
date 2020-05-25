//
//  ViewConfiguration.swift
//  marvelapp
//
//  Created by Diego Perez Salas on 20/05/20.
//  Copyright © 2020 Diego Perez Salas. All rights reserved.
//

import Foundation

protocol ViewConfiguration: class {
    func setupConstraints()
    func buildViewHierarchy()
    func configureViews()
}

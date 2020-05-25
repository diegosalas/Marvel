//
//  AppCoordinator.swift
//  marvelapp
//
//  Created by  Diego Perez Salas 07/04/20.
//

import Foundation

class AppCoordinator: Coordinator {
    
    private lazy var catalogCoordinator: CatalogCoordinator = {
        let coordinator = CatalogCoordinator()
        return coordinator
    }()
    
    override init() {
        super.init()
        super.viewController = catalogCoordinator.rootViewController
    }
    
    func start() {
        catalogCoordinator.start()
    }
    
    func stop() {
        
    }
}

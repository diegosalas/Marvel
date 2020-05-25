//
//  NavigationCoordinator.swift
//  marvelapp
//
//  Created by Diego Perez Salas on 20/05/20.
//  Copyright © Diego Perez Salas on 20/05/20. All rights reserved.
//

import UIKit

class NavigationCoordinator: Coordinatable {    
    var childCoordinators = [Coordinatable]()
    var viewController = UINavigationController()
}

extension NavigationCoordinator: AlertControllerPresentable {}

extension Coordinatable where Self: NavigationCoordinator {
    
    var rootViewController: UIViewController {
        return viewController
    }
    
    func start() {
        fatalError("Implement in child")
    }
    
    func stop() {
        fatalError("Implement in child")
    }
}

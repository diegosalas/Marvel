//
//  ErrorViewModel.swift
//  marvelapp
//
//  Created by  Diego Perez Salas 07/04/20.
//  Copyright ©  2020 Diego Perez Salas. All rights reserved.
//

import Foundation

struct ErrorViewModel {
    let message: String
    let actionTitle: String?
    let action: (() -> Void)?
    
    init(message: String) {
        self.message = message
        self.actionTitle = nil
        self.action = nil
    }
    
    
    init(message: String, actionTitle: String?, action: (() -> Void)?) {
        self.message = message
        self.actionTitle = actionTitle
        self.action = action
    }
    
    init(error: NSError, actionTitle: String?, action: (() -> Void)?) {
        self.init(
            message: error.localizedDescription,
            actionTitle: actionTitle,
            action: action
        )
    }
}

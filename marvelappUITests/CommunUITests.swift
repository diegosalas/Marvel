//
//  CommunUITests.swift
//  marvelappUITests
//
//  Created by Diego Perez Salas on 14/04/20.
//  Copyright © 2020 Diego Perez Salas. All rights reserved.
//

import Foundation

import XCTest
import Quick
import Nimble
import UITestHelper

class CommunUITests: QuickSpec {
    
    static func app(_ app: XCUIApplication, waitForCollectionViewWith timeout: TimeInterval) {
        app.collectionViews["catalog_collection_view"].waitUntilExists(timeout)
        app.cells["catalog_item_cell"].waitUntilExists(timeout)
    }
    
}

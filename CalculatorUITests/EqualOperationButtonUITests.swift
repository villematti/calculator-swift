//
//  EqualOperationButtonUITests.swift
//  CalculatorUITests
//
//  Created by Ville-Matti Hakanpää on 18.5.2020.
//  Copyright © 2020 Ville-Matti Hakanpää. All rights reserved.
//

import XCTest

class EqualOperationButtonUITests: XCTestCase {

    var tBtn: XCUIElement!
    var app: XCUIApplication!

    override class func setUp() {
        super.setUp()
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }
    
    override func setUp() {
        app = XCUIApplication()
        app.launch()
        tBtn = app.buttons["=operation"]
    }
    
    func test_button_should_exist() throws {
        XCTAssert(tBtn.exists)
    }
    
    func test_should_have_correct_label() throws {
        XCTAssert(tBtn.label == "=")
    }
}

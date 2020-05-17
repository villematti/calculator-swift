//
//  CalculatorUITests.swift
//  CalculatorUITests
//
//  Created by Ville-Matti Hakanpää on 17.5.2020.
//  Copyright © 2020 Ville-Matti Hakanpää. All rights reserved.
//

import XCTest

class CalculatorUITests: XCTestCase {
    
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
        tBtn = app.buttons["clearButton"]
    }

    func test_should_clear_result_label() throws {
        tBtn.tap()
        
        let resultLabel = app.staticTexts["resultLabel"]
        
        XCTAssertEqual("0", resultLabel.label)

    }
}

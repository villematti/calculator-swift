//
//  CalculatorUITests.swift
//  CalculatorUITests
//
//  Created by Ville-Matti Hakanpää on 17.5.2020.
//  Copyright © 2020 Ville-Matti Hakanpää. All rights reserved.
//

import XCTest

class CalculatorUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }
    
    func test_number1_button_should_exist() throws {
        let app = XCUIApplication()
        app.launch()
        
        XCTAssert(app.buttons["number1"].exists)
    }
    
    func test_number2_button_should_exist() throws {
        let app = XCUIApplication()
        app.launch()
        
        XCTAssert(app.buttons["number2"].exists)
    }
    
    func test_number3_button_should_exist() throws {
        let app = XCUIApplication()
        app.launch()
        
        XCTAssert(app.buttons["number3"].exists)
    }
    
    func test_number4_button_should_exist() throws {
        let app = XCUIApplication()
        app.launch()
        
        XCTAssert(app.buttons["number4"].exists)
    }
    
    func test_number5_button_should_exist() throws {
        let app = XCUIApplication()
        app.launch()
        
        XCTAssert(app.buttons["number5"].exists)
    }
    
    func test_number6_button_should_exist() throws {
        let app = XCUIApplication()
        app.launch()
        
        XCTAssert(app.buttons["number6"].exists)
    }
    
    func test_number7_button_should_exist() throws {
        let app = XCUIApplication()
        app.launch()
        
        XCTAssert(app.buttons["number7"].exists)
    }
    
    func test_number8_button_should_exist() throws {
        let app = XCUIApplication()
        app.launch()
        
        XCTAssert(app.buttons["number8"].exists)
    }
    
    func test_number9_button_should_exist() throws {
        let app = XCUIApplication()
        app.launch()
        
        XCTAssert(app.buttons["number9"].exists)
    }
    
    func test_number0_button_should_exist() throws {
        let app = XCUIApplication()
        app.launch()
        
        XCTAssert(app.buttons["number0"].exists)
    }
    
    func test_clear_button_should_exist() throws {
        let app = XCUIApplication()
        app.launch()
        
        XCTAssert(app.buttons["clearButton"].exists)
    }


    func test_should_clear_result_label() throws {
        let app = XCUIApplication()
        app.launch()
        
        let clearButton = app.buttons["clearButton"]
        clearButton.tap()
        
        let resultLabel = app.staticTexts["resultLabel"]
        
        XCTAssertEqual("0", resultLabel.label)

    }
}

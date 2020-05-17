//
//  NumberButtonUITests.swift
//  CalculatorUITests
//
//  Created by Ville-Matti Hakanpää on 17.5.2020.
//  Copyright © 2020 Ville-Matti Hakanpää. All rights reserved.
//

import XCTest

class NumberButtonUITests: XCTestCase {

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
    }
    
    func test_number1_button_should_exist() throws {
        tBtn = app.buttons["number1"]
        
        XCTAssert(tBtn.exists)
    }
    
    func test_number1_button_should_have_correct_label() throws {
        tBtn = app.buttons["number1"]
        
        XCTAssertEqual(tBtn.label, "1")
    }
    
    func test_number2_button_should_exist() throws {
        tBtn = app.buttons["number2"]
        
        XCTAssert(tBtn.exists)
    }
    
    func test_number2_button_should_have_correct_label() throws {
        tBtn = app.buttons["number2"]
        
        XCTAssertEqual(tBtn.label, "2")
    }
    
    func test_number3_button_should_exist() throws {
        tBtn = app.buttons["number3"]
        
        XCTAssert(tBtn.exists)
    }
    
    func test_number3_button_should_have_correct_label() throws {
        tBtn = app.buttons["number3"]
        
        XCTAssertEqual(tBtn.label, "3")
    }
    
    func test_number4_button_should_exist() throws {
        tBtn = app.buttons["number4"]
        
        XCTAssert(tBtn.exists)
    }
    
    func test_number4_button_should_have_correct_label() throws {
        tBtn = app.buttons["number4"]
        
        XCTAssertEqual(tBtn.label, "4")
    }
    
    func test_number5_button_should_exist() throws {
        tBtn = app.buttons["number5"]
        
        XCTAssert(tBtn.exists)
    }
    
    func test_number5_button_should_have_correct_label() throws {
        tBtn = app.buttons["number5"]
        
        XCTAssertEqual(tBtn.label, "5")
    }
    
    func test_number6_button_should_exist() throws {
        tBtn = app.buttons["number6"]
        
        XCTAssert(tBtn.exists)
    }
    
    func test_number6_button_should_have_correct_label() throws {
        tBtn = app.buttons["number6"]
        
        XCTAssertEqual(tBtn.label, "6")
    }
    
    func test_number7_button_should_exist() throws {
        tBtn = app.buttons["number7"]
        
        XCTAssert(tBtn.exists)
    }
    
    func test_number7_button_should_have_correct_label() throws {
        tBtn = app.buttons["number7"]
        
        XCTAssertEqual(tBtn.label, "7")
    }
    
    func test_number8_button_should_exist() throws {
        tBtn = app.buttons["number8"]
        
        XCTAssert(tBtn.exists)
    }
    
    func test_number8_button_should_have_correct_label() throws {
        tBtn = app.buttons["number8"]
        
        XCTAssertEqual(tBtn.label, "8")
    }
    
    func test_number9_button_should_exist() throws {
        tBtn = app.buttons["number9"]
        
        XCTAssert(tBtn.exists)
    }
    
    func test_number9_button_should_have_correct_label() throws {
        tBtn = app.buttons["number9"]
        
        XCTAssertEqual(tBtn.label, "9")
    }
    
    func test_number0_button_should_exist() throws {
        tBtn = app.buttons["number0"]
        
        XCTAssert(tBtn.exists)
    }
    
    func test_number0_button_should_have_correct_label() throws {
        tBtn = app.buttons["number0"]
        
        XCTAssertEqual(tBtn.label, "0")
    }
    
    func test_zero_can_not_be_the_first_number() throws {
        tBtn = app.buttons["number0"]
        
        let resultLabel = app.staticTexts["resultLabel"]
        
        tBtn.tap()
        
        XCTAssertEqual(resultLabel.label, "0")
    }

}

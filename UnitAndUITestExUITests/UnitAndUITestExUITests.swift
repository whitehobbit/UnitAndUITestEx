//
//  UnitAndUITestExUITests.swift
//  UnitAndUITestExUITests
//
//  Created by White Hobbit on 2017. 1. 12..
//  Copyright © 2017년 WhiteHobbit. All rights reserved.
//

import XCTest

class UnitAndUITestExUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMoveView() {
        
        XCTAssert(true)
        let app = XCUIApplication()
        app.buttons["Sign In - Sing In"].tap()
        app.alerts["FAIL"].buttons["OK"].tap()
        
        
        let idTextField = app.textFields["ID"]
        idTextField.tap()
        idTextField.typeText("t")
        app.buttons["Sign In - Sing In"].tap()
        app.alerts["FAIL"].buttons["OK"].tap()

        idTextField.tap()
        idTextField.typeText("test")
        app.buttons["Sign In - Sing In"].tap()
        app.alerts["FAIL"].buttons["OK"].tap()
        
        let passwordSecureTextField = app.secureTextFields["Password"]
        passwordSecureTextField.tap()
        passwordSecureTextField.tap()
        passwordSecureTextField.typeText("test")
        app.buttons["Sign In - Sing In"].tap()
    }
    
}

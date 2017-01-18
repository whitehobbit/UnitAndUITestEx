//
//  UnitAndUITestExTests.swift
//  UnitAndUITestExTests
//
//  Created by White Hobbit on 2017. 1. 12..
//  Copyright © 2017년 WhiteHobbit. All rights reserved.
//

import XCTest
@testable import UnitAndUITestEx

class UnitAndUITestExTests: XCTestCase {
    var vc: ViewController!
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        vc = storyboard.instantiateInitialViewController() as! ViewController
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLoginSuccess() {
        XCTAssert(true)
        print("\n\(vc.checkLogin(id: "test", pw: "test").discription())\n")
    }
    
    func testSignInFail_Empty() {
        XCTAssert(true)
        print("\n\(vc.checkLogin(id: nil, pw: nil).discription())\n")
    }
    
    func testSignInFail_ID() {
        XCTAssert(true)
        print("\n\(vc.checkLogin(id: "d", pw: nil).discription())\n")
    }
    
    func testSignInFail_Password() {
        XCTAssert(true)
        print("\n\(vc.checkLogin(id: "test", pw: "d").discription())\n")
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}

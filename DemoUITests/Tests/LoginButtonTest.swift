//
//  LoginButtonTest.swift
//  DemoUITests
//
//  Created by saibrahma.mutcherla on 22/02/23.
//  Copyright © 2023 TestProject. All rights reserved.
//

import XCTest
class LoginButtonTest : XCTestCase {
    
    override func setUp(){
        super.setUp()
        continueAfterFailure = false;
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        //
    }
    
    func testLoginButton(){
        LoginButtonPage().tapLoginBtn()
    }
    
    func testLoginBtnAI(){
        LoginButtonPage().tapLoginBtnByAI()
        print("Tapped by AI")
    }
}

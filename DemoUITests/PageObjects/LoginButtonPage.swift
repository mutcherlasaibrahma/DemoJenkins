//
//  LoginButtonPage.swift
//  DemoUITests
//
//  Created by saibrahma.mutcherla on 22/02/23.
//  Copyright © 2023 TestProject. All rights reserved.
//

import XCTest

public class LoginButtonPage: BaseTest{
    
    // Page Elements Access
    
    lazy var loginButton = app.buttons["login"]
    
    @discardableResult
    func tapLoginBtn(completion: Completion = nil) -> Self {
        log("tap on loggin button")
        loginButton.tap()
        return self
    }
    
    @discardableResult
    func tapLoginBtnByAI(completion: Completion = nil) -> Self {
        log("tap on loggin button")
        app.buttons["loginBtn"].tap()
        return self
    }
}

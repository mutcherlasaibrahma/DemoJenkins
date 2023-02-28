//
//  BaseTest.swift
//  DemoUITests
//
//  Created by saibrahma.mutcherla on 22/02/23.
//  Copyright © 2023 TestProject. All rights reserved.
//

import XCTest

class Logger{
    func log(_mlog: String){
        NSLog(_mlog)
    }
    
}

public class BaseTest{
    typealias Completion = (() -> Void)?
    let app = XCUIApplication()
    let log = Logger().log
//    required init(timeout: TimeInterval = 10, completion:Completion=nil){
//        log("Waiting \(timeout)s for \(String(describing:self)) existence")
//        XCTAssert(rootElement.waitForExistence(timeout: timeout),"Page \(String(describing:self)) waited, but not loaded")
//        completion?()
//    }
    
//    var rootElement : XCUIElement{
//        fatalError("subclass should overider root Element")
//    }
    
    //Button
    func button(_name: String)-> XCUIElement{
        return app.buttons[_name]
    }
    
    // Navigation Bar
    
    func naviButton(_name:String) -> XCUIElement{
        return app.navigationBars[_name]
    }
    
    //Secure Fields
    
    func secureFields(_name: String)->XCUIElement{
        return app.secureTextFields[_name]
    }
    
    // TextField
    
    func textFields(_name: String)-> XCUIElement{
        return app.textFields[_name]
    }
    
    // Text
    
    func text(_name: String)-> XCUIElement{
        return app.staticTexts[_name]
    }
    
    
}

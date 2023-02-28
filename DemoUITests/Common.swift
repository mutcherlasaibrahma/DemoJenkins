//
//  DemoUITests.swift
//  DemoUITests
//
//  Created by saibrahma.mutcherla on 08/02/23.
//  Copyright © 2023 TestProject. All rights reserved.
//

import XCTest

final class Common: XCTestCase {
    
    let app = XCUIApplication();
    
    public func appLaunch(){
        app.launch()
        print("----APP LAUNCHED-----")
    }
    
    public func appTerminate() {
        app.terminate()
        print("----APP TERMINATE------")
    }
    
    public func loginTest() {
        
        //Declering Constants in a variable
        let userNameAndPasswordValues = [1:"Sam", 2:"12345"]
        let passwordTxt = userNameAndPasswordValues[2];
        print(passwordTxt!)
        let userNameTxt = userNameAndPasswordValues[1];
        print(userNameTxt!)
        
        //Setting the values in Username and Password Field.
        let userName = app.textFields["name"]
        userName.tap()
        userName.typeText(userNameTxt!)
        
        let password = app.secureTextFields["password"]
        password.tap()
        password.typeText(passwordTxt!)
        
        //Click on Login Button
        let loginBtn = app.buttons["Login"]
        let loginLabel = app.staticTexts["Login"].label
        XCTAssertEqual(loginLabel, "Login")
        loginBtn.tap()
        print("Verified Login Sucessfully Done")
        
    }
    
    public func saveTest() {
        
        let saveBtn = app.buttons["save"]
        XCTAssertTrue(saveBtn.exists)
        saveBtn.tap()
        let savedLabel =  app/*@START_MENU_TOKEN@*/.staticTexts["saved"]/*[[".staticTexts[\"Saved\"]",".staticTexts[\"saved\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        XCTAssertEqual(savedLabel.label, "Saved")
        print("SAVE DETAILS SUCCESSFULLY")
    }
    
    public func logoutApp() {
        let logoutBtn = app.buttons["logout"]
        XCTAssertTrue(logoutBtn.exists)
        logoutBtn.tap()
        print("Logout Button Clicked Successfully")
        
        let verifyBackToLoginPage = app.buttons["Login"]
        XCTAssertTrue(verifyBackToLoginPage.isHittable)
        print("Redirected To Login Page")
    }
    
    public func verifyRegistrationFields() {
        let registrationValues = [1:"INDIA", 2:"TELEGANA",3:"sai@atmecs.com",4:"9948984897"]
        
        let countryTxt = app.textFields["Country"]
        let country = registrationValues[1];
        countryTxt.tap()
        countryTxt.typeText(country!)
        XCTAssertTrue(countryTxt.exists)
        
        let addressTxt = app.textFields["Address"]
        let address = registrationValues[2];
        addressTxt.tap()
        addressTxt.typeText(address!)
        XCTAssertTrue(addressTxt.exists)
        
        let emailIDTxt = app.textFields["Email"]
        let emailID = registrationValues[3];
        emailIDTxt.tap()
        emailIDTxt.typeText(emailID!)
        XCTAssertTrue(emailIDTxt.exists)
        
        let phoneTxt = app.textFields["Phone"]
        let phone = registrationValues[4];
        phoneTxt.tap()
        phoneTxt.typeText(phone!)
        XCTAssertTrue(phoneTxt.exists)
        
    }
    
}

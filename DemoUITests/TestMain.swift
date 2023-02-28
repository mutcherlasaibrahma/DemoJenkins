//
//  DemoUITestsLaunchTests.swift
//  DemoUITests
//
//  Created by saibrahma.mutcherla on 08/02/23.
//  Copyright © 2023 TestProject. All rights reserved.
//

import XCTest

//@available(iOS 13.0,*)
final class TestMain: XCTestCase {
    
    public func testApp() {
        
        Common.init().appLaunch();
        Common.init().loginTest();
        Common.init().verifyRegistrationFields();
        Common.init().saveTest();
        Common.init().logoutApp();
        Common.init().appTerminate();
        
        
        
    }
}

//
//  PerfomanceUITests.swift
//  DemoUITests
//
//  Created by saibrahma.mutcherla on 22/02/23.
//  Copyright © 2023 TestProject. All rights reserved.
//

import XCTest

class PerfomanceUITests :XCTestCase {
    
    override func setUp() {
        super.setUp()
            continueAfterFailure = false
            XCUIApplication().launch()
        
    }
    
    
    func testGeneralLoginBtnPerfomance(){
        measure {
            LoginButtonTest().testLoginBtnAI()
        }
    }
        
    func testLoginBtnPerformanceMetrixOptions(){
        let matrics :[XCTMetric] = [XCTMemoryMetric(),XCTStorageMetric(),XCTClockMetric()]
        
        let mesureOptions = XCTMeasureOptions.default
        mesureOptions.iterationCount = 3;
        
        measure(metrics : matrics, options: mesureOptions) {
            LoginButtonTest().testLoginBtnAI();
        }
    }
    
}

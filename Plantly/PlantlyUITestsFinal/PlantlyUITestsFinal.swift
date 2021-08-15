//
//  PlantlyUITestsFinal.swift
//  PlantlyUITestsFinal
//
//  Created by Dylan da Silva on 2021/08/15.
//

import XCTest

class PlantlyUITestsFinal: XCTestCase {
    
    let app = XCUIApplication()

    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    func testExample() throws {
        let greetings = app.staticTexts["greetings"]
        
        XCTAssert(greetings.exists)
    }

}

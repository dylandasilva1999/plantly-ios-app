//
//  PlantlyTests.swift
//  PlantlyTests
//
//  Created by Dylan da Silva on 2021/08/15.
//

import XCTest
@testable import Plantly

class PlantlyTests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
        
        let greetings = app.staticTexts["greeetings"]
        
        XCTAssert(greetings.exists)
    }

}

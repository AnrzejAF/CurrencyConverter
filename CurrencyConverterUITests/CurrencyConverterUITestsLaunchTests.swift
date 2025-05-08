//
//  CurrencyConverterUITestsLaunchTests.swift
//  CurrencyConverterUITests
//
//  Created by Andrzej on 01/05/2025.
//

import XCTest

final class CurrencyConverterUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()
        app.activate()
        app.buttons["Process to converter"].tap()
        let arrowUpArrowButton = app.buttons["arrow.up.arrow.down.circle.fill"]
        arrowUpArrowButton.tap()
        arrowUpArrowButton.tap()
        app.buttons["USD"].tap()
        app.buttons["GBP"].tap()
        app.staticTexts["EUR"].tap()
        app.buttons["CZK"].tap()
        app.textFields["0"].tap()
        app.buttons["Convert"].tap()
        
        arrowUpArrowButton.tap()
    }
}

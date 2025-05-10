//
//  CurrencyConverterUITestsLaunchTests.swift
//  CurrencyConverterUITests
//
//  Created by Andrzej on 10/05/2025.
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

        // Screenshot after app launch
        let launchScreenshot = XCUIScreen.main.screenshot()
        let launchAttachment = XCTAttachment(screenshot: launchScreenshot)
        launchAttachment.name = "01 - App Launched"
        launchAttachment.lifetime = .keepAlways
        add(launchAttachment)

        app.buttons["Process to converter"].tap()

        // Screenshot after tapping "Process to converter"
        let converterScreen = XCUIScreen.main.screenshot()
        let converterAttachment = XCTAttachment(screenshot: converterScreen)
        converterAttachment.name = "02 - Converter Screen"
        converterAttachment.lifetime = .keepAlways
        add(converterAttachment)

        let arrowUpArrowButton = app.buttons["arrow.up.arrow.down.circle.fill"]
        arrowUpArrowButton.tap()
        app.buttons["USD"].tap()
        app.buttons["GBP"].tap()

        // Screenshot after selecting currencies
        let currencySelected = XCUIScreen.main.screenshot()
        let currencyAttachment = XCTAttachment(screenshot: currencySelected)
        currencyAttachment.name = "03 - Currencies Selected"
        currencyAttachment.lifetime = .keepAlways
        add(currencyAttachment)

        app.staticTexts["EUR"].tap()
        app.buttons["CZK"].tap()
        app.textFields["0"].tap()
        app.buttons["Convert"].tap()

        // Screenshot after conversion
        let conversionResult = XCUIScreen.main.screenshot()
        let conversionAttachment = XCTAttachment(screenshot: conversionResult)
        conversionAttachment.name = "04 - Conversion Result"
        conversionAttachment.lifetime = .keepAlways
        add(conversionAttachment)

        arrowUpArrowButton.tap()
    }

}

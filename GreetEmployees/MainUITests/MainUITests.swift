//
//  MainUITests.swift
//  MainUITests
//
//  Created by Victor Alfonso Aguilar Beltran on 22/04/22.
//

import XCTest
@testable import GreetEmployees

class MainUITests: XCTestCase {
    var app: XCUIApplication!

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    override func tearDown() {
        super.tearDown()
        app = nil
    }

    func testTextfieldAreConnected() throws {
        // Given
        let nameTextField = app.textFields["Name"]
        let lastnameTextField = app.textFields["Lastname"]

        // When
        nameTextField.tap()
        nameTextField.typeText("Jhon")
        lastnameTextField.tap()
        lastnameTextField.typeText("Carey")
        app.buttons["Greet"].tap()

        // Then
        XCTAssertTrue(app.staticTexts["Good to see you, Jhon Carey"].exists)
    }
}

//
//  GreetingControllerTest.swift
//  GreetEmployeesTests
//
//  Created by Victor Alfonso Aguilar Beltran on 21/04/22.
//

import XCTest
@testable import GreetEmployees

class GreetingControllerTest: XCTestCase {

    var greetingController: GreetingController!

    override func setUp() {
        super.setUp()
        greetingController = GreetingController()
    }

    override func tearDown() {
        super.tearDown()
        greetingController = nil
    }

    func testNameAndLastnameNotPresent() throws {
        // Given
        let name = ""
        let lastname = ""

        // When
        let greet = greetingController.sendGreetings(name: name, lastname: lastname)

        // Then
        XCTAssertEqual(greet, nil)
    }

    func testNamePresentAndLastnameNotPresent() throws {
        // Given
        let name = "Jhon"
        let lastname = ""

        // When
        let greet = greetingController.sendGreetings(name: name, lastname: lastname)

        // Then
        XCTAssertEqual(greet, "Hi, Jhon")
    }

    func testNameNoPresentAndLastnamePresent() throws {
        // Given
        let name = ""
        let lastname = "Carey"

        // When
        let greet = greetingController.sendGreetings(name: name, lastname: lastname)

        // Then
        XCTAssertEqual(greet, "Hi, \(lastname)")
    }

    func testNamePresentAndLastnamePresent() throws {
        // Given
        let name = "Jhon"
        let lastname = "Carey"

        // When
        let greet = greetingController.sendGreetings(name: name, lastname: lastname)

        // Then
        XCTAssertEqual(greet, "Good to see you, \(name) \(lastname)")
    }

}

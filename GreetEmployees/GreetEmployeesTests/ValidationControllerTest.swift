//
//  ValidationControllerText.swift
//  GreetEmployeesTests
//
//  Created by Victor Alfonso Aguilar Beltran on 21/04/22.
//

import XCTest
@testable import GreetEmployees

class ValidationControllerTest: XCTestCase {

    var validationController: ValidationService!

    override func setUp() {
        super.setUp()
        validationController = ValidationService()
    }

    override func tearDown() {
        super.tearDown()
        validationController = nil
    }

    func testValidateShortName() throws {
        // Given
        let name = "Jhon"
        let lastname = ""

        // When
        let result = validationController.validate(employee: Employee(name: name, lastname: lastname))

        // Then
        XCTAssertEqual(result, NameStatus.shortname)
    }

    func testValidateLastnameOnly() throws {
        // Given
        let name = ""
        let lastname = "Carey"

        // When
        let result = validationController.validate(employee: Employee(name: name, lastname: lastname))

        // Then
        XCTAssertEqual(result, NameStatus.lastname)
    }

    func testValidateFullName() throws {
        // Given
        let name = "Jhon"
        let lastname = "Carey"

        // When
        let result = validationController.validate(employee: Employee(name: name, lastname: lastname))

        // Then
        XCTAssertEqual(result, NameStatus.fullname)
    }

    func testValidateNoName() throws {
        // Given
        let name = ""
        let lastname = ""

        // When
        let result = validationController.validate(employee: Employee(name: name, lastname: lastname))

        // Then
        XCTAssertEqual(result, NameStatus.noName)
    }

}

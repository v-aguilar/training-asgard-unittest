//
//  GreetingController.swift
//  GreetEmployees
//
//  Created by Victor Alfonso Aguilar Beltran on 21/04/22.
//

import Foundation

class GreetingController {
    // MARK: Properties
    let validationController = ValidationService()

    // MARK: Functions
    func sendGreetings(name: String, lastname: String) -> String? {
        let nameTrimmed = name.trim()
        let lastnameTrimmed = lastname.trim()
        let employee = Employee(name: nameTrimmed, lastname: lastnameTrimmed)

        let nameKind = validationController.validate(employee: employee)

        switch nameKind {
        case .fullname:
            return "Good to see you, \(employee.name) \(employee.lastname)"
        case .shortname:
            return "Hi, \(employee.name)"
        case .lastname:
            return "Hi, \(employee.lastname)"
        case .noName:
            return nil
        }
    }
}

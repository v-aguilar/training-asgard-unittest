//
//  ValidationController.swift
//  GreetEmployees
//
//  Created by Victor Alfonso Aguilar Beltran on 21/04/22.
//

import Foundation

class ValidationService {
    func validate(employee: Employee) -> NameStatus {
        if (employee.name.isEmpty) && employee.lastname.isEmpty {
            return .noName
        }
        if employee.lastname.isEmpty {
            return .shortname
        }
        if employee.name.isEmpty {
            return .lastname
        }
        return .fullname
    }
}

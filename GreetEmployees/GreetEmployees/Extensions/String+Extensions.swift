//
//  String+Extensions.swift
//  GreetEmployees
//
//  Created by Victor Alfonso Aguilar Beltran on 21/04/22.
//

import Foundation

extension String {
    func trim() -> String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

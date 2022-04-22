//
//  ViewController.swift
//  GreetEmployees
//
//  Created by Victor Alfonso Aguilar Beltran on 21/04/22.
//

import UIKit

class MainController: UIViewController {
    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastnameTextField: UITextField!
    @IBOutlet weak var greetLabel: UILabel!
    let greetingController = GreetingController()

    // MARK: Functions
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func greetButtonPressed(_ sender: UIButton) {
        guard let name = nameTextField.text, let lastname = lastnameTextField.text else {
            return
        }
        if let greet = greetingController.sendGreetings(name: name, lastname: lastname) {
            greetLabel.text = greet
        }
    }
}

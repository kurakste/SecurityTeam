//
//  RegistrationController.swift
//  SecurityTeam
//
//  Created by Evgeniy Suprun on 9/6/19.
//  Copyright © 2019 Evgeniy Suprun. All rights reserved.
//

import UIKit

class RegistrationController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkPassword: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var passportFotoTextField: UITextField!
    @IBOutlet weak var passportRegistrationTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       hideKeyboardWhenTappedAround()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    

    @IBAction func backBarButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func checkBoxButton(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
}


// MARK: Hide KeyBoard

extension RegistrationController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(RegistrationController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}




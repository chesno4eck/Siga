//
//  StartStartViewController.swift
//  siga
//
//  Created by Дмитрий Алиев on 21/03/2018.
//  Copyright © 2018 Aliyev inc.. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    var output: StartViewOutput!

    @IBOutlet var cancelButton: StandartButton!
    @IBOutlet var signInButton: StandartButton!
    @IBOutlet var nextButton: StandartButton!
    
    @IBOutlet var nameTextField: UITextField!
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }

    // MARK: IBActions
    @IBAction func signInTapped(_ sender: StandartButton) {
        output.signInTapped()
    }
    
    @IBAction func nextTapped(_ sender: StandartButton) {
        guard let phoneNumber = PhoneNumberVerifyer.verifyPhone(nameTextField.text) else {
            print("bad number")
            return
        }
        output.nextTapped(withPhoneNumber: phoneNumber)
    }
  
    @IBAction func cancelTapped(_ sender: StandartButton) {
        output.cancelTapped()
    }

}

// MARK: StartViewInput

extension StartViewController: StartViewInput {
    
    func setupInitialState() {
        UIView.animate(withDuration: 0.95) {
            self.view.backgroundColor = #colorLiteral(red: 0.8659310937, green: 0.8659514785, blue: 0.8659405112, alpha: 1)
        }
    }
    
    func showSignInForm() {
        signInButton.isHidden = true
        
        nextButton.isHidden = false
        cancelButton.isHidden = false
        
        nameTextField.isHidden = false
    }

    func showInitialForm() {
        signInButton.isHidden = false

        nextButton.isHidden = true
        cancelButton.isHidden = true
        
        nameTextField.isHidden = true
    }
}

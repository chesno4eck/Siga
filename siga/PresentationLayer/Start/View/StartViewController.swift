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

    @IBOutlet var startButton: StandartButton!
    @IBOutlet var cancelButton: StandartButton!
    @IBOutlet var signInButton: StandartButton!
    @IBOutlet var signUpButton: StandartButton!
    
    @IBOutlet var nameTextField: UITextField!
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }

    @IBAction func signInTapped(_ sender: StandartButton) {
        output.signInTapped()
    }
    
    @IBAction func startTapped(_ sender: StandartButton) {
        output.startTapped()
    }
  
    @IBAction func cancelTapped(_ sender: StandartButton) {
        output.cancelTapped()
    }

}

// MARK: StartViewInput

extension StartViewController: StartViewInput {
    
    func setupInitialState() {
    }
    
    func showSignInForm() {
        signInButton.isHidden = true
        signUpButton.isHidden = true
        
        startButton.isHidden = false
        cancelButton.isHidden = false
        
        nameTextField.isHidden = false
    }

    func showSignUpForm() {
        signInButton.isHidden = true
        signUpButton.isHidden = true
        
        startButton.isHidden = false
        cancelButton.isHidden = false
        
        nameTextField.isHidden = false
    }
    
    func showInitialForm() {
        signInButton.isHidden = false
        signUpButton.isHidden = false

        startButton.isHidden = true
        cancelButton.isHidden = true
        
        nameTextField.isHidden = true
    }
}

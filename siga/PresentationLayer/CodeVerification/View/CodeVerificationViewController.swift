//
//  CodeVerificationCodeVerificationViewController.swift
//  siga
//
//  Created by Дмитрий Алиев on 21/03/2018.
//  Copyright © 2018 Aliyev inc.. All rights reserved.
//

import UIKit

class CodeVerificationViewController: UIViewController {

    var output: CodeVerificationViewOutput!
    @IBOutlet var codeTextField: UITextField!
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

    @IBAction func nextTapped(_ sender: StandartButton) {
        output.nextTapped(code: codeTextField.text!)
    }
    
}

// MARK: CodeVerificationViewInput

extension CodeVerificationViewController: CodeVerificationViewInput {
    
    func setupInitialState() {
        
    }
}

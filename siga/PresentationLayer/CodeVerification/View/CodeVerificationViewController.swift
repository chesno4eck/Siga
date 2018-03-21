//
//  CodeVerificationCodeVerificationViewController.swift
//  siga
//
//  Created by Дмитрий Алиев on 21/03/2018.
//  Copyright © 2018 Aliyev inc.. All rights reserved.
//

import UIKit

class CodeVerificationViewController: UIViewController, CodeVerificationViewInput {

    var output: CodeVerificationViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: CodeVerificationViewInput
    func setupInitialState() {
    }
}

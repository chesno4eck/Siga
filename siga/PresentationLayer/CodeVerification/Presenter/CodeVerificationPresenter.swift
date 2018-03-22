//
//  CodeVerificationCodeVerificationPresenter.swift
//  siga
//
//  Created by Дмитрий Алиев on 21/03/2018.
//  Copyright © 2018 Aliyev inc.. All rights reserved.
//

import FirebaseAuth

class CodeVerificationPresenter: CodeVerificationModuleInput, CodeVerificationViewOutput, CodeVerificationInteractorOutput {

    weak var view: CodeVerificationViewInput!
    var interactor: CodeVerificationInteractorInput!
    var router: CodeVerificationRouterInput!

    func nextTapped(code: String) {
        guard let verificationID = UserDefaults.standard.string(forKey: "authVerificationID") else { return }
        let credential = PhoneAuthProvider.provider().credential(
            withVerificationID: verificationID,
            verificationCode: code)
        
        Auth.auth().signIn(with: credential) { (user, error) in
            if let error = error {
                print(error)
                return
            }
            print("User is signed in")
        }
    }
    
    func viewIsReady() {

    }
}

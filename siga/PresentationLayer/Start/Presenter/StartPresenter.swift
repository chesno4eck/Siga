//
//  StartStartPresenter.swift
//  siga
//
//  Created by Дмитрий Алиев on 21/03/2018.
//  Copyright © 2018 Aliyev inc.. All rights reserved.
//

import FirebaseAuth

class StartPresenter: StartModuleInput, StartInteractorOutput {

    weak var view: StartViewInput!
    var interactor: StartInteractorInput!
    var router: StartRouterInput!

    func viewIsReady() {
        view.setupInitialState()
    }
    
}

extension StartPresenter: StartViewOutput {
    
    func signInTapped() {
        view.showSignInForm()
    }
    
    func cancelTapped() {
        view.showInitialForm()
    }

    func nextTapped(withPhoneNumber number: String) {
        PhoneAuthProvider.provider().verifyPhoneNumber(number, uiDelegate: nil) { (verificationID, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            UserDefaults.standard.set(verificationID, forKey: "authVerificationID")

            // Sign in using the verificationID and the code sent to the user
            // ...
        }
    }
    
    func acceptTapped(withVerificationCode code: String) {
        
    }
}

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
//        if nil != Auth.auth().currentUser {
//            router.showMainVC()
//            return
//        }
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
        
        self.router.showCodeVerificationVC()

//        
//        PhoneAuthProvider.provider().verifyPhoneNumber(number, uiDelegate: nil) { (verificationID, error) in
//            if let error = error {
//                print(error.localizedDescription)
//                return
//            }
//            
//            UserDefaults.standard.set(verificationID, forKey: "authVerificationID")
//            
//            self.router.showCodeVerificationVC()
//            // Sign in using the verificationID and the code sent to the user
//            // ...
//        }
    }
    
    func acceptTapped(withVerificationCode code: String) {
        
    }
}

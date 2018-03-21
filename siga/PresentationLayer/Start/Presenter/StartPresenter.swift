//
//  StartStartPresenter.swift
//  siga
//
//  Created by Дмитрий Алиев on 21/03/2018.
//  Copyright © 2018 Aliyev inc.. All rights reserved.
//

class StartPresenter: StartModuleInput, StartInteractorOutput {

    

    weak var view: StartViewInput!
    var interactor: StartInteractorInput!
    var router: StartRouterInput!

    func viewIsReady() {

    }
    
}

extension StartPresenter: StartViewOutput {
    
    func signInTapped() {
        view.showSignInForm()
    }

    func signUpTapped() {
        view.showSignUpForm()
    }
    
    func cancelTapped() {
        view.showInitialForm()
    }
    
    func startTapped() {
        print("go")
    }
}

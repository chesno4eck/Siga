//
//  StartStartViewInput.swift
//  siga
//
//  Created by Дмитрий Алиев on 21/03/2018.
//  Copyright © 2018 Aliyev inc.. All rights reserved.
//

protocol StartViewInput: class {

    /**
        @author Дмитрий Алиев
        Setup initial state of the view
    */

    func setupInitialState()
    
    func showSignInForm()
    func showSignUpForm()

    func showInitialForm()

}

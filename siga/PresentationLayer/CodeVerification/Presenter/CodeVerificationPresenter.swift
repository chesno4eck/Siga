//
//  CodeVerificationCodeVerificationPresenter.swift
//  siga
//
//  Created by Дмитрий Алиев on 21/03/2018.
//  Copyright © 2018 Aliyev inc.. All rights reserved.
//

class CodeVerificationPresenter: CodeVerificationModuleInput, CodeVerificationViewOutput, CodeVerificationInteractorOutput {

    weak var view: CodeVerificationViewInput!
    var interactor: CodeVerificationInteractorInput!
    var router: CodeVerificationRouterInput!

    func viewIsReady() {

    }
}

//
//  CodeVerificationCodeVerificationConfigurator.swift
//  siga
//
//  Created by Дмитрий Алиев on 21/03/2018.
//  Copyright © 2018 Aliyev inc.. All rights reserved.
//

import UIKit

class CodeVerificationModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? CodeVerificationViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: CodeVerificationViewController) {

        let router = CodeVerificationRouter()

        let presenter = CodeVerificationPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = CodeVerificationInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}

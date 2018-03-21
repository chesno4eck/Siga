//
//  StartStartConfigurator.swift
//  siga
//
//  Created by Дмитрий Алиев on 21/03/2018.
//  Copyright © 2018 Aliyev inc.. All rights reserved.
//

import UIKit

class StartModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? StartViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: StartViewController) {

        let router = StartRouter()

        let presenter = StartPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = StartInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}

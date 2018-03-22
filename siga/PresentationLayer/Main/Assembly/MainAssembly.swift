//
//  MainMainAssembly.swift
//  siga
//
//  Created by Дмитрий Алиев on 22/03/2018.
//  Copyright © 2018 Aliyev inc.. All rights reserved.
//

import UIKit

final class MainAssembly {
	fileprivate static func assembleModule(with viewController: MainViewController) {
        let router = MainRouter()
//        router.transitionHandler = viewController
        
        let interactor = MainInteractor()
        
        let presenter = MainPresenter(view: viewController, interactor: interactor, router: router)
        viewController.output = presenter
        
        interactor.output = presenter
    }

    static func createViewControllerAndAssemblyModule() -> UIViewController {
        guard let viewController = UIViewController.createViewController(withType: MainViewController.self) as? MainViewController else {
            fatalError("can't create MainViewController")
        }
        
        MainAssembly.assembleModule(with: viewController)

        return viewController
    }
}

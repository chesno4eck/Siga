//
//  StartStartRouter.swift
//  siga
//
//  Created by Дмитрий Алиев on 21/03/2018.
//  Copyright © 2018 Aliyev inc.. All rights reserved.
//

class StartRouter: StartRouterInput {
    weak var view: StartViewController!
    
    func showCodeVerificationVC() {
        guard let vc = view.storyboard?.instantiateViewController(withIdentifier: "CodeVerificationViewController") else {
            return
        }
        let configurator = CodeVerificationModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: vc)

        view.show(vc, sender: nil)
    }
    
    func showMainVC() {
        let mainVC = MainAssembly.createViewControllerAndAssemblyModule()
        view.show(mainVC, sender: nil)
    }
}

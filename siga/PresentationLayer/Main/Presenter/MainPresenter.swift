//
//  MainMainPresenter.swift
//  siga
//
//  Created by Дмитрий Алиев on 22/03/2018.
//  Copyright © 2018 Aliyev inc.. All rights reserved.
//

final class MainPresenter {
    fileprivate unowned let view: MainViewInput
    fileprivate let router: MainRouterInput
    fileprivate let interactor: MainInteractorInput
    
    init(view: MainViewInput, interactor: MainInteractorInput, router: MainRouterInput) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension MainPresenter: MainViewOutput {
    func viewLoaded() {
        view.setupInitialState()
    }
}

extension MainPresenter: MainInteractorOutput {
    
}

//
//  StartStartInitializer.swift
//  siga
//
//  Created by Дмитрий Алиев on 21/03/2018.
//  Copyright © 2018 Aliyev inc.. All rights reserved.
//

import UIKit

class StartModuleInitializer {

    func start(_ vc: StartViewController) {
        let configurator = StartModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: vc)
    }

}

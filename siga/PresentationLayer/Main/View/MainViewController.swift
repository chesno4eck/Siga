//
//  MainMainViewController.swift
//  siga
//
//  Created by Дмитрий Алиев on 22/03/2018.
//  Copyright © 2018 Aliyev inc.. All rights reserved.
//

import UIKit

final class MainViewController: UIViewController {
    var output: MainViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewLoaded()
    }
}

extension MainViewController: MainViewInput {
    func setupInitialState() {
        
    }
}

//
//  Extensions.swift
//  siga
//
//  Created by Дмитрий Алиев on 22/03/2018.
//  Copyright © 2018 Дмитрий Алиев. All rights reserved.
//

import UIKit

extension UIViewController {
    static func createViewController(withType type: UIViewController.Type) -> UIViewController {
        return type.init(nibName: String(describing: type), bundle: nil)
    }
}

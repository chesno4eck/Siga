//
//  StandartButton.swift
//  siga
//
//  Created by Дмитрий Алиев on 21/03/2018.
//  Copyright © 2018 Дмитрий Алиев. All rights reserved.
//

import UIKit

class StandartButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.cornerRadius = 12.0
    }

}

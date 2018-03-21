//
//  AppDelegate.swift
//  siga
//
//  Created by Дмитрий Алиев on 21/03/2018.
//  Copyright © 2018 Дмитрий Алиев. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        FirebaseApp.configure()

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let startVC = storyboard.instantiateInitialViewController() as! StartViewController
        
        let initializer = StartModuleInitializer()
        initializer.start(startVC)

        self.window?.rootViewController = startVC
        self.window?.makeKeyAndVisible()
        
        return true
    }
}


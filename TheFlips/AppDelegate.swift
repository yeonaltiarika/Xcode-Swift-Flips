//
//  AppDelegate.swift
//  TheFlips
//
//  Created by Altiarika on 6/12/17.
//  Copyright © 2017 Altiarika. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let rootViewController = AppController()
        
        let frame = UIScreen.main.bounds
        window = UIWindow(frame: frame)
        
        if let window = window {
            window.rootViewController = rootViewController
            window.makeKeyAndVisible()
        }
        
        return true
    }
    
}

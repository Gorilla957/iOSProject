//
//  AppDelegate.swift
//  iOSProject
//
//  Created by apple on 2020/12/3.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = nil
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = .white
        self.window?.rootViewController = UINavigationController(rootViewController: AUMainTabBarController())
        self.window?.makeKeyAndVisible()
        return true
    }

}


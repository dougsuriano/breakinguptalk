//
//  BRTNAppDelegate.swift
//  BurritoTonight
//
//  Created by Doug Suriano on 9/12/17.
//  Copyright © 2017 DougSuriano. All rights reserved.
//

import UIKit

@UIApplicationMain
class BRTNAppDelegate: UIResponder, UIApplicationDelegate
{
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool
    {
        let appWindow = UIWindow(frame: UIScreen.main.bounds)
        appWindow.backgroundColor = .white
        
        let menuViewController = BRTNMenuViewController(nibName: nil, bundle: nil)
        let navigationController = UINavigationController(rootViewController: menuViewController)
        
        appWindow.rootViewController = navigationController
        appWindow.makeKeyAndVisible()
        
        window = appWindow
        
        return true
    }
}


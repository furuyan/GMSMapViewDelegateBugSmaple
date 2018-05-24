//
//  AppDelegate.swift
//  GMSMapViewDelegateBugSmaple
//
//  Created by Koji Furuya on 2018/05/24.
//  Copyright © 2018 Koji Furuya. All rights reserved.
//

import UIKit
import GoogleMaps

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // TODO: input your api key & Product Bundle Indetifier
        GMSServices.provideAPIKey("your api key")
        
        return true
    }
}


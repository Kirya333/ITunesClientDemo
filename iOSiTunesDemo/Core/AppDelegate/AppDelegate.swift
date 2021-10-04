//
//  AppDelegate.swift
//  iOSiTunesDemo
//
//  Created by Кирилл Тарасов on 28.09.2021.
//

import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var appStartManager: AppStartManager?
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.appStartManager = AppStartManager(window: self.window)
        self.appStartManager?.start()
        return true
    }
}


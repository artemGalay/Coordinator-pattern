//
//  AppDelegate.swift
//  Coordinator pattern
//
//  Created by Артем Галай on 19.12.22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var appCoordinator = CoordinatorFactory().createAppCoordinator(navigationController: UINavigationController())

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = appCoordinator.navigationController
        appCoordinator.start()
        window?.makeKeyAndVisible()

        return true
    }
}

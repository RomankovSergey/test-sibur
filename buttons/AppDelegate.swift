//
//  AppDelegate.swift
//  buttons
//
//  Created by Diana on 01.07.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Создали первый экран
        let vc = ViewController()
        // Создали в принципе экран приложения
        self.window = UIWindow(frame: UIScreen.main.bounds)
        // Создали navigationController, и сказали что первый экран это будет ViewController
        let nv = UINavigationController(rootViewController: vc)
        nv.view.backgroundColor = .white
        //Положили на главный экран Window NavigationController
        self.window?.rootViewController = nv
        window?.makeKeyAndVisible()
        return true
    }



}


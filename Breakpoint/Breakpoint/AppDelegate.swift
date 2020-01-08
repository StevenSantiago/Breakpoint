//
//  AppDelegate.swift
//  Breakpoint
//
//  Created by Steven Santiago on 1/5/20.
//  Copyright © 2020 Steven Santiago. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication,
      didFinishLaunchingWithOptions launchOptions:
        [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      FirebaseApp.configure()
        
        //Only works below iOS 13
//        if Auth.auth().currentUser == nil {
//            self.window = UIWindow(frame: UIScreen.main.bounds)
//            let storyboard = UIStoryboard(name: "LoginScreen", bundle: nil)
//            let authVC = storyboard.instantiateViewController(withIdentifier: "AuthVC") as! AuthVC
//            //UIApplication.shared.windows.first?.rootViewController = authVC
//            //window?.makeKeyAndVisible()
//            //window?.rootViewController!.present(authVC, animated: true, completion: nil)
//            self.window?.makeKeyAndVisible()
//            self.window?.rootViewController = authVC
//            //self.window?.rootViewController!.present(authVC, animated: true, completion: nil)
//            //window?.rootViewController?.present(authVC, animated: true, completion: nil)
//            //self.window!.makeKeyAndVisible()
//
//        }
      return true
    }

    // MARK: UISceneSession Lifecycle

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}


//
//  CustomAppDelegateForSwiftUI.swift
//  CustomAppDelegate
//
//  Created by Jonn Alves on 11/03/23.
//

import Foundation
import UIKit

class CustomAppDelegateForSwiftUI: UIResponder, UIApplicationDelegate, ObservableObject {
    @Published var date: Date = .now // 👈🏻
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("MyAppDelegate didFinishLaunchingWithOptions called")
        
        Timer
            .publish(every: 1, on: .main, in: .default)
            .autoconnect()
            .assign(to: &$date)
        
        return true
    }
    
    func application(
         _ application: UIApplication,
         configurationForConnecting connectingSceneSession: UISceneSession,
         options: UIScene.ConnectionOptions
     ) -> UISceneConfiguration {

         let configuration = UISceneConfiguration(
                                 name: nil,
                                 sessionRole: connectingSceneSession.role)
         if connectingSceneSession.role == .windowApplication {
             configuration.delegateClass = MySceneDelegate.self
         }
         return configuration
     }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // ...
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        // ...
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        // ...
    }
    
    // MARK: Life cycle
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // The app is now in the background.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // The app is about to enter the foreground.
    }
        
    // MARK: Registrating remote notifications
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        // The app successfully registered with Apple Push Notification service.
    }
}

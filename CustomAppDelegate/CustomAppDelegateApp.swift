//
//  CustomAppDelegateApp.swift
//  CustomAppDelegate
//
//  Created by Jonn Alves on 11/03/23.
//

import SwiftUI

@main
struct CustomAppDelegateApp: App {
    
    @Environment(\.scenePhase) var scenePhase
    @UIApplicationDelegateAdaptor(CustomAppDelegateForSwiftUI.self) private var appDelegate
    
    init() {
        /// perform Any task on app launch
        print("Perform any task here in init")
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: scenePhase) { (newScenePhase) in
                 switch newScenePhase {
                 case .background:
                     print("App State : Background")
                 case .inactive:
                     print("App State : Inactive")
                 case .active:
                     print("App State : Active")
                 @unknown default:
                     print("App State : Unknown")
                 }
             }
    }
}

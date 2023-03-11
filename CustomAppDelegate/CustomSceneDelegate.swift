//
//  MySceneDelegate.swift
//  CustomAppDelegate
//
//  Created by Jonn Alves on 11/03/23.
//

import Foundation
import UIKit

class MySceneDelegate: NSObject, UIWindowSceneDelegate, ObservableObject {
    func windowScene(
        _ windowScene: UIWindowScene,
        performActionFor shortcutItem: UIApplicationShortcutItem
    ) async -> Bool {
        // Do something with the shortcut...

        return true
    }
}

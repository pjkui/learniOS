//
//  AppDelegate.swift
//  Gestures
//
//  Created by quinnpan on 2018/8/24.
//  Copyright © 2018 quinnpan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let addEventIcon = UIApplicationShortcutIcon(type: .add)
        let audoEventIcon = UIApplicationShortcutIcon(type: .audio)
        let pauseEventIcon = UIApplicationShortcutIcon(type: .pause)
        
        let addEvent = UIApplicationShortcutItem(type: "com.pjkui.add", localizedTitle: "添加会员", localizedSubtitle: "Add Member", icon: addEventIcon, userInfo: nil)
        let audioEvent = UIApplicationShortcutItem(type: "com.pjkui.audio", localizedTitle: "播放音乐", localizedSubtitle: "Play Music", icon: audoEventIcon, userInfo: nil)
        let pauseEvent = UIApplicationShortcutItem(type: "com.pjkui.pause", localizedTitle: "暂停音乐", localizedSubtitle: "Pause Music", icon: pauseEventIcon, userInfo: nil)
        let shortItems = [addEvent,audioEvent,pauseEvent]
        application.shortcutItems = shortItems
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
        if shortcutItem.type == "com.pjkui.add" {
            print("add ...")
        }else if shortcutItem.type == "com.pjkui.audio"{
            print("audio ...  ")
        }else if shortcutItem.type == "com.pjkui.pause"{
            print("pause....")
        }
    }


}


//
//  AppDelegate.swift
//  DeviceRotationOnlyOneViewController
//
//  Created by Jairo Barros on 3/5/16.
//  Copyright © 2016 jairobjunior. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    private func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        if let rootViewController = self.topViewControllerWithRootViewController(window?.rootViewController) {
            if (rootViewController is CanRotate) {
                // Unlock landscape view orientations for this view controller
                return .allButUpsideDown;
            }
        }

        // Only allow portrait (standard behaviour)
        return .portrait;
    }
    
    private func topViewControllerWithRootViewController(_ rootViewController: UIViewController!) -> UIViewController? {
        if (rootViewController == nil) { return nil }
        if (rootViewController is UITabBarController) {
            return topViewControllerWithRootViewController((rootViewController as! UITabBarController).selectedViewController)
        } else if (rootViewController is UINavigationController) {
            return topViewControllerWithRootViewController((rootViewController as! UINavigationController).visibleViewController)
        } else if (rootViewController.presentedViewController != nil) {
            return topViewControllerWithRootViewController(rootViewController.presentedViewController)
        }
        return rootViewController
    }


}


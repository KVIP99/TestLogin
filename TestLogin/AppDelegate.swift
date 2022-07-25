//
//  AppDelegate.swift
//  TestLogin
//
//  Created by KVip on 7/25/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let loginVC = storyboard.instantiateViewController(withIdentifier: "loginVC")
        let tabbarVC = storyboard.instantiateViewController(withIdentifier: "tabbarVC")
        
        let token = UserDefaults.standard.string(forKey: "TokenLogin") as? String
        if (token != nil ){
        
            self.window?.rootViewController = tabbarVC
            
//            self.window?.makeKeyAndVisible()
        }else{
            self.window?.rootViewController = loginVC
            self.window?.makeKeyAndVisible()
        }
        
        return true
    }
}


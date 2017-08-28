//
//  AppDelegate.swift
//  Assign3.1
//
//  Created by Abe Rodriguez on 11/6/15.
//  Copyright (c) 2015 ___AbeRodriguez___. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        preloaddata()
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    func preloaddata() {
        
        var error: NSError? = nil
        var downloadFailed = false
        
        let navigationController = self.window!.rootViewController as! UINavigationController
        let masterController = navigationController.childViewControllers[0] as! MasterViewController
        
        let path = NSBundle.mainBundle().pathForResource("Chicago White Sox", ofType: "plist")
        
        let array: [AnyObject] = NSArray(contentsOfFile: path!) as! [AnyObject]
        
        for dictionary in array {
            let number = dictionary["Number"]
            let fname = dictionary["First Name"]
            let lname = dictionary["Last Name"]
            let position = dictionary["Position"]
            let bats = dictionary["Bats"]
            let throws = dictionary["Throws"]
            let height = dictionary["Height"]
            let weight = dictionary["Weight"]
            let dateofbirth = dictionary["DOB"]
            
            
            masterController.objects.append(Roster(number: number as! String, firstName: fname as!    String, lastName: lname as! String, position: position as! String, bats: bats as! String, throws: throws as! String, height: height as! String, weight: weight as! String, dateofbirth: dateofbirth as! String))
        }
        masterController.objects.sort({$0.lName < $1.lName})
        masterController.objects.sort({$0.fName < $1.fName})
//        let lastName = NSSortDescriptor(key: "lName", ascending: true, selector: "localizedStandardCompare:")
//        let firstName = NSSortDescriptor(key: "fName", ascending: true, selector: "localizedStandardCompare:")
//        let sortedByLastNameFirstName = (Roster!() as NSArray).sortedArrayUsingDescriptors([lastName, firstName])


    }


}


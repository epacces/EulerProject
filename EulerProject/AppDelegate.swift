//
//  AppDelegate.swift
//  EulerProject
//
//  Created by hepaKKes on 26/09/14.
//  Copyright (c) 2014 Eriprando Pacces. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
       
        let problem01 = Euler01()
        let result01 = problem01.solveProblem()
        
        let problem02 = Euler02()
        let result02 = problem02.solveProblem()
        
        
        return true
    }

}


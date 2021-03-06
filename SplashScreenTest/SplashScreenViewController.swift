//
//  SplashScreenViewController.swift
//  SplashScreenTest
//
//  Created by Hunter Stanton on 9/11/16.
//  Copyright © 2016 HunterStanton. All rights reserved.
//

import UIKit

class SplashScreenViewController: UIViewController{
    
    var segueTimer: Timer!
    
    override func viewDidLoad() {
        // We'll use viewDidLoad to setup our timer and move to the new view whenever the timer is up
        // Currently the time is set to Pi seconds but can be changed here
        
        // Double as opposed to int so we can get precise timings
        let timer_interval: Double = M_PI
        
        // Create our timer and start it instantly
        // We want no interaction from the user necessary on this screen so we must begin things instantly
        segueTimer = Timer.scheduledTimer(timeInterval: timer_interval, target: self, selector: #selector(timerDidFire), userInfo: nil, repeats: false)
        
        
        super.viewDidLoad()
    }
    
    
    /// The function executed when the timer reaches the end of its schedule.
    func timerDidFire()
    {
        // Print so that we know it worked right
        print("timer fired, moving to new view")
        
        // Invalidate the timer because it is no longer needed
        segueTimer.invalidate()
        
        // Move to it
        self.performSegue(withIdentifier: "EndSplashSegue", sender: self)
    }
}

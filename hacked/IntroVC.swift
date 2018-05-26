//
//  IntroVC.swift
//  hacked
//
//  Created by John Leonardo on 5/25/18.
//  Copyright © 2018 John Leonardo. All rights reserved.
//

import UIKit
import AlertOnboarding

class IntroVC: UIViewController, AlertOnboardingDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //when view appears, load onboarding alert
        //first, declare data
        let arrayOfImage = ["kraken.png", "magnifying-glass.png", "lock-2.png"]
        let arrayOfTitle = ["WELCOME!", "CHECK YOURSELF", "PRIVACY"]
        let arrayOfDescription = [
            "Thanks for downloading! This is an app that will help you stay safe online. You can search your information, and looked at websites that have been breached in the past to make sure you're not still using compromised information.",
            "You can search for your email or your password, and this app will check all the hacked databases that were leaked publicly to make sure your information is not in those hacks. If it is, don't worry, it just tells you that you should probably change your passwords.",
            "For an app made to keep you safe, it's kind of important that you have the privacy you deserve. We never store ANY information, this app doesn't even have a database. Nothing is logged, nothing is tracked. Enjoy!"
        ]
        
        //pass in data to alertOnboarding
        let alertView = AlertOnboarding(arrayOfImage: arrayOfImage, arrayOfTitle: arrayOfTitle, arrayOfDescription: arrayOfDescription)
        
        //set delegate to self
        alertView.delegate = self
        
        //... and show it
        alertView.show()
    }
    
    //status bars are ugly
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func alertOnboardingSkipped(_ currentStep: Int, maxStep: Int) {
        //set onboarded to true in defaults, and segue to Main VC
        UserDefaults.standard.set(true, forKey: "onboarded")
        self.performSegue(withIdentifier: "goToMain1", sender: nil)
    }
    
    func alertOnboardingCompleted() {
        //set onboarded to true in defaults, and segue to Main VC
        UserDefaults.standard.set(true, forKey: "onboarded")
        self.performSegue(withIdentifier: "goToMain1", sender: nil)
        
    }
    
    func alertOnboardingNext(_ nextStep: Int) {
        //do nothing
    }


}


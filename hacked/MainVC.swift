//
//  MainVC.swift
//  hacked
//
//  Created by John Leonardo on 5/26/18.
//  Copyright © 2018 John Leonardo. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    //outlets
    @IBOutlet weak var bar1: UIView!
    @IBOutlet weak var bar2: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bar1.backgroundColor = UIColor(red:0.47, green:0.81, blue:0.44, alpha:1.0)
        bar2.backgroundColor = UIColor(red:0.81, green:0.44, blue:0.65, alpha:1.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //status bars are ugly
    override var prefersStatusBarHidden: Bool {
        return true
    }

    @IBAction func switchToEmail(_ sender: Any) {
        //adjust bar above button to indicate button is selected/unselected
        bar1.backgroundColor = UIColor(red:0.47, green:0.81, blue:0.44, alpha:1.0)
        bar2.backgroundColor = UIColor(red:0.81, green:0.44, blue:0.65, alpha:1.0)
    }
    
    @IBAction func switchToPassword(_ sender: Any) {
        //adjust bar above button to indicate button is selected/unselected
        bar2.backgroundColor = UIColor(red:0.47, green:0.81, blue:0.44, alpha:1.0)
        bar1.backgroundColor = UIColor(red:0.81, green:0.44, blue:0.65, alpha:1.0)
    }
    
}

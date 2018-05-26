//
//  MainVC.swift
//  hacked
//
//  Created by John Leonardo on 5/26/18.
//  Copyright © 2018 John Leonardo. All rights reserved.
//

import UIKit
import TweeTextField

class MainVC: UIViewController, UITextFieldDelegate {
    
    //outlets
    @IBOutlet weak var bar1: UIView!
    @IBOutlet weak var bar2: UIView!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var textField: TweeActiveTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bar1.backgroundColor = UIColor(red:0.47, green:0.81, blue:0.44, alpha:1.0)
        bar2.backgroundColor = UIColor(red:0.81, green:0.44, blue:0.65, alpha:1.0)
        
        //give shadow to bottom of topView
        let shadowPath = UIBezierPath()
        shadowPath.move(to: CGPoint(x: topView.bounds.origin.x, y: topView.frame.size.height))
        shadowPath.addLine(to: CGPoint(x: topView.bounds.width / 2, y: topView.bounds.height + 7.0))
        shadowPath.addLine(to: CGPoint(x: topView.bounds.width, y: topView.bounds.height))
        shadowPath.close()
        topView.layer.shadowColor = UIColor.darkGray.cgColor
        topView.layer.shadowOpacity = 1
        topView.layer.masksToBounds = false
        topView.layer.shadowPath = shadowPath.cgPath
        topView.layer.shadowRadius = 3
        
        //set up TweeTextField
        textField.lineColor = UIColor(red:0.47, green:0.81, blue:0.44, alpha:1.0)
        textField.lineWidth = 2
        textField.delegate = self
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
        textField.tweePlaceholder = "email"
        textField.isSecureTextEntry = false
    }
    
    @IBAction func switchToPassword(_ sender: Any) {
        //adjust bar above button to indicate button is selected/unselected
        bar2.backgroundColor = UIColor(red:0.47, green:0.81, blue:0.44, alpha:1.0)
        bar1.backgroundColor = UIColor(red:0.81, green:0.44, blue:0.65, alpha:1.0)
        textField.tweePlaceholder = "password"
        textField.isSecureTextEntry = true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return false
    }
    
}

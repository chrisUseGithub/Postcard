//
//  ViewController.swift
//  Postcard
//
//  Created by Christian Reke on 25.02.15.
//  Copyright (c) 2015 Reke GmbH. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
 

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


        @IBAction func senMailButtonPressed(sender: UIButton) {
            messageLabel.hidden = false
            messageLabel.text = enterMessageTextField.text
            messageLabel.textColor = UIColor.redColor()
            
            enterMessageTextField.text = ""
            enterMessageTextField.resignFirstResponder()
            
            mailButton.setTitle("Mail sent", forState: UIControlState.Normal)
        
    }
    
}


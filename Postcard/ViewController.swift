//
//  ViewController.swift
//  Postcard
//
//  Created by Scott Galbraith on 9/11/14.
//  Copyright (c) 2014 Great American Insurance Group. All rights reserved.
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
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // show hidden label message
        messageLabel.hidden = false
        
        if enterMessageTextField.text != "" {
            messageLabel.text = enterMessageTextField.text
            enterMessageTextField.text = ""
            enterMessageTextField.resignFirstResponder()
            messageLabel.textColor = UIColor.magentaColor()
            mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        } else {
            messageLabel.text = "fill in message, goofy!"
        }
    }


}


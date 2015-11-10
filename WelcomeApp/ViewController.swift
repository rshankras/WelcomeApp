//
//  ViewController.swift
//  WelcomeApp
//
//  Created by Ravi Shankar on 29/04/15.
//  Copyright (c) 2015 Ravi Shankar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterName: UITextField!
    
    //labels
    var messageLabel = UILabel()
    var nameLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func displayMessage(sender: UIButton) {
        loadLabels()
        
        
        UIView.animateWithDuration(10, delay: 0.5, options: UIViewAnimationOptions.CurveEaseIn, animations: {
            
            self.messageLabel.center = CGPoint(x: 200, y: 200)
            self.nameLabel.center = CGPoint(x: 200, y: 240)
            
            }, completion: { finished in
                if finished {
                    // do nothing
                }
        })
    }
    
    @IBAction func callDemo(sender: UIButton) {
        print("Demo button clicked" +  (sender.titleLabel?.text)!)
    }
    
    // MARK:- Create labels
    func loadLabels() {
        
        messageLabel.text = "Welcome"
        messageLabel.center = CGPoint(x: 0, y: 200)
        messageLabel.font = UIFont.systemFontOfSize(25)
        messageLabel.sizeToFit()
        view.addSubview(messageLabel)
        
        nameLabel.text = enterName.text
        nameLabel.center = CGPoint(x: 480, y: 240)
        nameLabel.font = UIFont.systemFontOfSize(25)
        nameLabel.sizeToFit()
        view.addSubview(nameLabel)
    }
}


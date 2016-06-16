//
//  ViewController.swift
//  MinorityReport
//
//  Created by Kristin Kamenar on 6/16/16.
//  Copyright © 2016 Kristin Kamenar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var futureLabel: UILabel!
    @IBOutlet weak var preCogLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onDrag(sender: UIPanGestureRecognizer) {
        
        //sends as a CGPoint
        let point = sender.locationInView(view)
        futureLabel.center = point
        
        //when released, animate back to the center
        
        //check to see when dragging stops
        if sender.state == .Ended
        {
            UIView.animateWithDuration(0.75, animations: { 
                self.futureLabel.center = self.view.center
            })
        }
        
        else if CGRectContainsPoint(preCogLabel.frame, point)
        {
            let myAlert = UIAlertController(title: "Minority Report", message: "Pre Cog Detected", preferredStyle: UIAlertControllerStyle.Alert)
            //dismiss button
            myAlert.addAction(UIAlertAction(title: "Arrest Them!", style: .Default, handler: nil))
            
            //second button
            myAlert.addAction(UIAlertAction(title:"Let Them Go!", style: .Default, handler: nil))
            
            //show alert view
            presentViewController(myAlert, animated: true, completion: nil)
            
        }
        
    }

}


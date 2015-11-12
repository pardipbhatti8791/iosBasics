//
//  ViewController.swift
//  lastDay
//
//  Created by Gagudeep on 08/11/15.
//  Copyright © 2015 Gagudeep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func dayFind(sender: AnyObject) {
        
        // get the selected date from date picker
        let chosenDate = self.datePicker.date
        
        // create date formatter
        
        let formatter = NSDateFormatter()
        
        formatter.dateFormat = "EEEE"
        
        // get the day
        
        let day = formatter.stringFromDate(chosenDate)
        
        let result = "That was a \(day)"
        
        // create a alert
        
        let myAlert = UIAlertController(title: result, message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        
        // add ok button
        
        myAlert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        
        // Show alert
        
        self.presentViewController(myAlert, animated: true, completion: nil)
        
        
    }

}


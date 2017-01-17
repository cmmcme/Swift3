//
//  ViewController.swift
//  FlightBooking
//
//  Created by 윤찬미 on 2017. 1. 10..
//  Copyright © 2017년 윤찬미. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var selectDatePicker: UIDatePicker!
    
    @IBOutlet var departureDateButton: UIButton!
    
    @IBOutlet var returnDateLabel: UILabel!
    @IBOutlet var returnDateButton: UIButton!
    
    var buttonTag:Int = 1
    @IBAction func selectedDateAction(_ sender: AnyObject) {
        let formatter = DateFormatter()
        formatter.dateFormat = "YY-MM-d hh:mma"
        
        //let dateString = formatter.string(from: selectDatePicker.date)
        let dateString = formatter.string(from: (sender as! UIDatePicker).date)
        
        if buttonTag == 1
        {
            departureDateButton.setTitle(dateString, for: UIControlState())
        }
        else
        {
            returnDateButton.setTitle(dateString, for: UIControlState())
        }
    
    }
    
    @IBAction func showDatePickerAction(_ sender: AnyObject) {
        if selectDatePicker.isHidden == false
        {
            selectDatePicker.isHidden = true
        }
        else
        {
            selectDatePicker.isHidden = false
        }
        
        buttonTag = (sender as! UIButton).tag
        
        
    }
    
    @IBAction func showReturnDateAction(_ sender: AnyObject) {
        print(sender.description!)
        
//        if (sender as! UISwitch).isOn {
//            returnDateLabel.isHidden = false
//            returnDateButton.isHidden = false
//        }else{
//            returnDateLabel.isHidden = true
//            returnDateButton.isHidden = true
//        }
        returnDateLabel.isHidden = !(sender as! UISwitch).isOn
        returnDateButton.isHidden = !(sender as! UISwitch).isOn
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        returnDateLabel.isHidden = true;
        returnDateButton.isHidden = true;
        selectDatePicker.isHidden = true;
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        selectDatePicker.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


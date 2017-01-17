//
//  ViewController.swift
//  DigitalFrame
//
//  Created by 윤찬미 on 2017. 1. 4..
//  Copyright © 2017년 윤찬미. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imgView:UIImageView!
    @IBOutlet var toogleButton:UIButton!
    @IBOutlet var speedSlider:UISlider!
    @IBOutlet var speedLable:UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cuteImage = [UIImage(named:"1.jpg")!,
                    UIImage(named:"2.png")!,
                    UIImage(named:"3.png")!,
                    UIImage(named:"4.png")!,
                    UIImage(named:"5.png")!,
                    UIImage(named:"6.jpeg")!,
                    UIImage(named:"7.png")!,
                    UIImage(named:"8.jpg")!,
                    UIImage(named:"9.jpeg")!,
                    UIImage(named:"10.jpeg")!,
                    UIImage(named:"11.png")!,
                    UIImage(named:"12.jpg")!,
                    UIImage(named:"13.png")!,
                    UIImage(named:"14.jpg")!,
                    UIImage(named:"15.png")!]
        
        imgView.animationImages = cuteImage
        
        imgView.animationDuration = 15.0
        
    }
    
    @IBAction func toogleAction(_sender:AnyObject) {
        if imgView.isAnimating
        {
            imgView.stopAnimating()
            toogleButton.setTitle("Start", for: UIControlState.normal)
        }
        else
        {
            imgView.startAnimating()
              toogleButton.setTitle("Stop", for: UIControlState.normal)
        }
    }
    
    @IBAction func changeSpeedAction(_ sender:AnyObject) {
        
        imgView.animationDuration = Double(speedSlider.value)
        imgView.startAnimating()
        toogleButton.setTitle("Stop", for: UIControlState.normal)
        
        speedLable.text = "\(speedSlider.value)"
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


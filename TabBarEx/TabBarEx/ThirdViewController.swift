//
//  ThirdViewController.swift
//  TabBarEx
//
//  Created by 윤찬미 on 2017. 1. 11..
//  Copyright © 2017년 윤찬미. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet var thirdLabel: UILabel!
    @IBAction func buttonAction(_ sender: AnyObject) {
        thirdLabel.text = "3번이 눌러졌습니다"

    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

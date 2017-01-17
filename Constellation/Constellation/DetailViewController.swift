//
//  DetailViewController.swift
//  Constellation
//
//  Created by 윤찬미 on 2017. 1. 16..
//  Copyright © 2017년 윤찬미. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBAction func backButtonAction(_ sender: AnyObject) {
        self.navigationController?.popViewController(animated: true)
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

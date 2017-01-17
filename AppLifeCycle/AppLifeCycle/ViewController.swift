//
//  ViewController.swift
//  AppLifeCycle
//
//  Created by 윤찬미 on 2017. 1. 5..
//  Copyright © 2017년 윤찬미. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    override func loadView() {
//        super.loadView()
//        print("load view")
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     // Do any additional setup after loading the view, typically from a nib.
        
        puts("viewDidLoad")
    }

    // 뷰를 왔다갔다 더리면서 계속 호출 됨..!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        puts("viewWillAppear")

    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        puts("viewDidAppear")

    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(true)
        puts("viewWillDisappear")

    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(true)
        puts("viewDidDisappear")

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


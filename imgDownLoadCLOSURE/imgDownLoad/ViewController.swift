//
//  ViewController.swift
//  imgDownLoad
//
//  Created by 윤찬미 on 2017. 1. 17..
//  Copyright © 2017년 윤찬미. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var downloadTask:URLSessionDownloadTask!
    
    @IBOutlet var progressView: UIProgressView!
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var indicator: UIActivityIndicatorView!
    
    
    @IBAction func downloadAction(_ sender: AnyObject) {
        
        self.imgView.image = nil
        indicator.startAnimating()
        self.progressView.setProgress(0.0, animated: false)
        
        let sessionConfiguration = URLSessionConfiguration.default
        let session = URLSession(configuration: sessionConfiguration, delegate: nil, delegateQueue: OperationQueue.main)

        
        
        downloadTask = session.downloadTask(with: URL(string:"https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/sample.jpeg")!, completionHandler: {(data,response,error)-> Void in
        
            self.imgView.image = UIImage(data: try! Data(contentsOf: data!))
            self.indicator.stopAnimating()
        } )
        
        downloadTask.resume()
    }

    
    @IBAction func suspendAction(_ sender: AnyObject) {
        downloadTask.suspend()
    }

    @IBAction func resumeAction(_ sender: AnyObject) {
        downloadTask.resume()
    }
    
    @IBAction func cancelAction(_ sender: AnyObject) {
        downloadTask.cancel()
        self.progressView.setProgress(0.0, animated: false)
        indicator.stopAnimating()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


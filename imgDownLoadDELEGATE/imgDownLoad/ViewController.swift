//
//  ViewController.swift
//  imgDownLoad
//
//  Created by 윤찬미 on 2017. 1. 17..
//  Copyright © 2017년 윤찬미. All rights reserved.
//

import UIKit

class ViewController: UIViewController,URLSessionDownloadDelegate {

    var downloadTask:URLSessionDownloadTask!
    
    @IBOutlet var progressView: UIProgressView!
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var indicator: UIActivityIndicatorView!
    
    
    @IBAction func downloadAction(_ sender: AnyObject) {
        
        self.imgView.image = nil
        indicator.startAnimating()
        self.progressView.setProgress(0.0, animated: false)
        
        let sessionConfiguration = URLSessionConfiguration.default
        let session = URLSession(configuration: sessionConfiguration, delegate: self, delegateQueue: OperationQueue.main)
        downloadTask = session.downloadTask(with: URL(string:"https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/sample.jpeg")!)
        
        downloadTask.resume()
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
        
        print("bytesWritten : \(bytesWritten)")
        print("totalBytesWritten : \(totalBytesWritten)")
        print("totalBytesExpectedToWrite : \(totalBytesExpectedToWrite)")
        
        let tempprogress:Float = Float(totalBytesWritten)/Float(totalBytesExpectedToWrite)
        self.progressView.setProgress(tempprogress, animated: true)
        
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        let data:Data = try! Data(contentsOf: location)
        self.imgView.image = UIImage(data: data)
        self.indicator.stopAnimating()
        
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


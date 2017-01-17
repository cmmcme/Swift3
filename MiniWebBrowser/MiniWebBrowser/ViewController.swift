//
//  ViewController.swift
//  MiniWebBrowser
//
//  Created by 윤찬미 on 2017. 1. 6..
//  Copyright © 2017년 윤찬미. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate,UIWebViewDelegate {
    
    @IBOutlet var bookMarkSegmentedControl: UISegmentedControl!
    
    @IBOutlet var urlTextField: UITextField!
    
    @IBOutlet var miniWebView: UIWebView!
    
    @IBOutlet var spiningActivityIndicatorView: UIActivityIndicatorView!
    

    @IBAction func bookMarkAction(_ sender: AnyObject) {
        let bookMarkUrl = bookMarkSegmentedControl.titleForSegment(at: bookMarkSegmentedControl.selectedSegmentIndex)
        
        let urlString = "https://www.\(bookMarkUrl!).com"
        
        miniWebView.loadRequest(URLRequest(url: URL(string: urlString)!))
        
        urlTextField.text = urlString

        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        var urlString = "\(urlTextField.text!)"
        if !urlString.hasPrefix("https://") {
            urlString = "https://\(urlTextField.text!)"
        }
        miniWebView.loadRequest(URLRequest(url:URL(string: urlString)!))
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "https://m.naver.com"
        miniWebView.loadRequest(URLRequest(url: URL(string : urlString)!))
        urlTextField.text = urlString
        
        
        
    }
    func webViewDidStartLoad(_ webView: UIWebView) {
        spiningActivityIndicatorView.startAnimating()
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        spiningActivityIndicatorView.stopAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


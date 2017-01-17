//
//  ViewController.swift
//  SignUpScreen
//
//  Created by 윤찬미 on 2017. 1. 5..
//  Copyright © 2017년 윤찬미. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

   
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var idTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var telTextField: UITextField!
    @IBOutlet var blogTextField: UITextField!
    @IBOutlet var resultTextView: UITextView!
    
    @IBAction func signUpAction(_ sender: AnyObject) {
        resultTextView.text = "\(nameTextField.text!) 님 가입을 축하합니다!"
        nameTextField.text = ""
        idTextField.text = ""
        passwordTextField.text = ""
        telTextField.text = ""
        blogTextField.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


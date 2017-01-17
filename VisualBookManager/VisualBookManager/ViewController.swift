//
//  ViewController.swift
//  VisualBookManager
//
//  Created by 윤찬미 on 2017. 1. 3..
//  Copyright © 2017년 윤찬미. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let myBook = BookManager()
    @IBOutlet var outputTextView:UITextView!
    
    @IBOutlet var nameTextField:UITextField!
     @IBOutlet var genreTextField:UITextField!
     @IBOutlet var authorTextField:UITextField!
    
    @IBOutlet var countLabel:UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        let book1 = Book()
        
        book1.name = "햄릿"
        book1.genre = "비극"
        book1.author = "세익스피어"
        
        let book2 = Book()
        
        book2.name = "너는 물처럼 내게 밀려오라"
        book2.genre = "시"
        book2.author = "이정하"
        
        let book3 = Book()
        
        book3.name = "별헤는밤"
        book3.genre = "시"
        book3.author = "윤동주"
        
        myBook.addBook(book1)
        myBook.addBook(book2)
        myBook.addBook(book3)
        
        countLabel.text = "\(myBook.countBook())"
    }
    
    @IBAction func showAllBookAction(_ sender:AnyObject) {
       // print(myBook.showAllBook())
        outputTextView.text = myBook.showAllBook()
        
    }
    @IBAction func addBookAction(_ sender:AnyObject) {
        let bookTemp = Book()
        
        bookTemp.name = nameTextField.text!
        bookTemp.genre = genreTextField.text!
        bookTemp.author = authorTextField.text!
        
        myBook.addBook(bookTemp)
        
        outputTextView.text = "\(nameTextField.text!) 도서가등록되었습니다!"
        
    }
    @IBAction func findBookAction(_ sender: AnyObject) {
        let resultBook = myBook.findBook(nameTextField.text!)
        if resultBook != nil
        {
            outputTextView.text = resultBook
        }
        else
        {
            outputTextView.text = "찾으시는 책이 없습니다!"
        }
    
    }
    @IBAction func removeBookAction(_ sender: AnyObject) {
        let deleteBook = myBook.removeBook(nameTextField.text!)
        if deleteBook == true
        {
            outputTextView.text = "\(nameTextField.text!) 도서가 지워졌습니다!"
        }
        else
        {
            outputTextView.text = "지우려는 도서가 존재하지 않습니다."
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


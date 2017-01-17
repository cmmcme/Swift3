//
//  main.swift
//  BookManager
//
//  Created by 윤찬미 on 2017. 1. 3..
//  Copyright © 2017년 윤찬미. All rights reserved.
//

import Foundation

var book1 = Book()

book1.name = "햄릿"
book1.genre = "비극"
book1.author = "세익스피어"

//book1.bookPrint()

var book2 = Book()

book2.name = "너는 물처럼 내게 밀려오라"
book2.genre = "시"
book2.author = "이정하"

//book2.bookPrint()

var book3 = Book()

book3.name = "별헤는밤"
book3.genre = "시"
book3.author = "윤동주"

//book3.bookPrint()

var myBook = BookManager()
myBook.addBook(book1)
myBook.addBook(book2)
myBook.addBook(book3)

print(myBook.showAllBook())

print(myBook.countBook())

var findResult = myBook.findBook("햄릿")

if (findResult != nil) {
    print("\(findResult!)를 찾았습니다")
}
else
{
    print("찾으시는 책이 없습니다.")
}

myBook.removeBook("별헤는밤")

print(myBook.showAllBook())

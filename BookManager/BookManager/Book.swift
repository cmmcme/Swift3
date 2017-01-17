//
//  Book.swift
//  BookManager
//
//  Created by 윤찬미 on 2017. 1. 3..
//  Copyright © 2017년 윤찬미. All rights reserved.
//

import Foundation

class Book {
    var name = ""
    var genre = ""
    var author = ""
    
    func bookPrint() {
        print("Name : \(name)")
        print("Genre : \(genre)")
        print("Author : \(author)")
    }
}

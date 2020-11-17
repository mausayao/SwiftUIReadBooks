//
//  Book.swift
//  ReadBooks
//
//  Created by Maurício de Freitas Sayão on 15/11/20.
//

struct Book: Hashable {
    let title: String
    let author: String
    
    init(title: String = "Title", author: String = "Author") {
        self.title = title
        self.author = author
    }
}

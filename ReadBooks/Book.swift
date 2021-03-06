//
//  Book.swift
//  ReadBooks
//
//  Created by Maurício de Freitas Sayão on 15/11/20.
//
import Combine

class Book: ObservableObject {
   
    let title: String
    let author: String
    @Published var microReview: String
    @Published var readMe: Bool
    
    init(
        title: String = "Title",
        author: String = "Author",
        microReview: String = "",
        readMe: Bool = true
    ) {
        self.title = title
        self.author = author
        self.microReview = microReview
        self.readMe = readMe
    }
}

extension Book: Hashable, Identifiable{
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

extension Book: Equatable {
    static func == (lhs: Book, rhs: Book) -> Bool {
        lhs === rhs
    }
}

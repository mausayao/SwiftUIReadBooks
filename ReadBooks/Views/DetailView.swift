//
//  DetailView.swift
//  ReadBooks
//
//  Created by Maurício de Freitas Sayão on 15/11/20.
//

import SwiftUI

struct DetailView: View {
    let book: Book
    var body: some View {
        VStack(alignment: .leading) {
            AuthorAndTitleStack(
                book: book,
                titleFont: .title,
                authorFont: .title2
                )
            Book.Image(title: book.title)
            Spacer()
        }
        .padding()
      
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(book: .init())
    }
}

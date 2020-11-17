//
//  BookRowView.swift
//  ReadBooks
//
//  Created by Maurício de Freitas Sayão on 15/11/20.
//

import SwiftUI

struct BookRow: View {
    let book: Book
    @Binding var image: UIImage?
    
    var body: some View {
        NavigationLink(
            destination: DetailView(book: book, image: $image)
        ){
            HStack {
                Book.Image(title: book.title, size: 80)
                AuthorAndTitleStack(
                    book: book,
                    titleFont: .title2,
                    authorFont: .title3
                )
                .lineLimit(1)
            }
        }
    }
}

struct BookRow_Previews: PreviewProvider {
    static var previews: some View {
        BookRow(book: .init(), image: .constant(nil))
    }
}

//
//  BookView.swift
//  ReadBooks
//
//  Created by Maurício de Freitas Sayão on 15/11/20.
//

import SwiftUI

extension Book {
    struct Image: View {
        let title: String
        
        var body: some View {
            let symbol = SwiftUI.Image(title: title) ??
                .init(systemName: "book")
            
            symbol
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .font(Font.title.weight(.light))
                .foregroundColor(.secondary)
        }
    }
}

struct Book_Previews: PreviewProvider {
    static var previews: some View {
        Book.Image(title: Book().title)
    }
}

extension Image {
    init?(title: String) {
        guard let firstString = title.first,
              case let symbolName = "\(firstString.lowercased()).square",
              UIImage(systemName: symbolName) != nil
        else {
            return nil
        }
        
        self.init(systemName: symbolName)
    }
}

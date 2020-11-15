//
//  ContentView.swift
//  ReadBooks
//
//  Created by Maurício de Freitas Sayão on 15/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(Library().sortedBooks, id: \.title) { book in
            BookRow(book: book)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




//
//  ContentView.swift
//  ReadBooks
//
//  Created by Maurício de Freitas Sayão on 15/11/20.
//

import SwiftUI

struct ContentView: View {
   @State var libray = Library()
    
    var body: some View {
        NavigationView {
            List(libray.sortedBooks, id: \.self) { book in
                BookRow(
                    book: book,
                    image: $libray.uiImages[book]
                )
            }
            .navigationTitle("My Library")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




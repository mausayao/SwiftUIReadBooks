//
//  ContentView.swift
//  ReadBooks
//
//  Created by Maurício de Freitas Sayão on 15/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Book.Image(title: Book().title)
            Text("Title")
                .font(.title2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


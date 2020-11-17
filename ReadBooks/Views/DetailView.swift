//
//  DetailView.swift
//  ReadBooks
//
//  Created by Maurício de Freitas Sayão on 15/11/20.
//

import SwiftUI
import class PhotosUI.PHPickerViewController

struct DetailView: View {
    let book: Book
    @Binding var image: UIImage?
    @State var showingImagePicker = false
    
    var body: some View {
        VStack(alignment: .leading) {
            AuthorAndTitleStack(
                book: book,
                titleFont: .title,
                authorFont: .title2
                )
            VStack {
                Book.Image(title: book.title)
                Button("Update Image") {
                    showingImagePicker = true
                }
                .padding()
            }
            Spacer()
        }
        .padding()
        .sheet(isPresented: $showingImagePicker) {
            PHPickerViewController.View(image: $image)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(book: .init(), image: .constant(nil))
            .previewedInAllColorSchemas
    }
}

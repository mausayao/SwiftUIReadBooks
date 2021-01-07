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
    @State var showDelete = false
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 16) {
                BookMarkButton(book: book)
                AuthorAndTitleStack(
                    book: book,
                    titleFont: .title,
                    authorFont: .title2
                )
            }
            VStack {
                Book.Image(
                    uiImage: image,
                    title: book.title,
                    cornerRadius: 16
                )
                .scaledToFit()
                
                let buttonUpdateImage =  Button("Update Image") {
                    showingImagePicker = true
                }
                .padding()
                
                if image != nil {
                    HStack{
                        Spacer()
                        Button("Delete Image") {
                            showDelete = true
                        }
                        .padding()
                        
                        Spacer()
                        
                        buttonUpdateImage
                        
                        Spacer()
                    }
                } else {
                    buttonUpdateImage
                }
            }
            Spacer()
        }
        .padding()
        .sheet(isPresented: $showingImagePicker) {
            PHPickerViewController.View(image: $image)
        }
        .alert(isPresented: $showDelete) {
            .init(
                title: .init("Delete image for \(book.title)?"),
                primaryButton: .destructive(.init("Delete")) {
                    image = nil
                },
                secondaryButton: .cancel()
            )
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(book: .init(), image: .constant(nil))
            .previewedInAllColorSchemas
    }
}

//
//  ReadingView.swift
//  BookReview
//
//  Created by Tim McEwan on 12/23/22.
//

import SwiftUI

struct ReadingView: View {
    var book: Book
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .navigationTitle(book.title)
    }
}

struct ReadingView_Previews: PreviewProvider {
    static var previews: some View {
        let example = Book(ids: UUID(), title: "Harry Potter", author: "Jimmy", isfav: true, currentPage: 0, rating: 1, id: 1, content: ["sadfasfasfafsasf", "adsfasfasf"])
        ReadingView(book: example)
    }
}

//
//  ReadingView.swift
//  BookReview
//
//  Created by Tim McEwan on 12/23/22.
//

import SwiftUI

struct ReadingView: View {
    @EnvironmentObject var model: BookModel
    var num: Int
    var book: Book
    var body: some View {
        GeometryReader { geo in
            TabView {
                ForEach(0..<model.bookStore.count, id: \.self) {i in
                    ScrollView {
                        Text("\(model.bookStore[num].content[i]) \n \(i + 1)")
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                    
                }
            }.tabViewStyle(.page)
        }
            .navigationTitle(book.title)
    }
}

struct ReadingView_Previews: PreviewProvider {
    static var previews: some View {
        let example = Book(ids: UUID(), title: "Harry Potter", author: "Jimmy", isfav: true, currentPage: 0, rating: 1, id: 1, content: ["sadfasfasfafsasf", "adsfasfasf"])
        ReadingView(num: 0, book: example)
    }
}

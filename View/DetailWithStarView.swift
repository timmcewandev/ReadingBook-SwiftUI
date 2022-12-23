//
//  DetailWithStarView.swift
//  BookReview
//
//  Created by Tim McEwan on 12/23/22.
//

import SwiftUI

struct DetailWithStarView: View {
    var book: Book
    @EnvironmentObject var model: BookModel
    @State var isFavorited: Bool
    @State var currentlyRated = 1
    var body: some View {
                VStack(alignment: .leading) {
                    VStack {
                        Text("Read Now!")
                            .font(.callout)
                            .fontWeight(.semibold)
                            .padding(.top)
                        NavigationLink {
                            ReadingView(book: book)
                        } label: {
                            Image("cover\(book.id)")
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 400, height: 350)
                                .clipped()
                        }
                        Text("Mark For Later")
                        Button {
                            //Do the thing to track if marked or not
                            model.switchFavorited(id: book.ids!, isFav: !isFavorited)
                            isFavorited = !isFavorited
                            
                        } label: {
                            Image(systemName: isFavorited ? "star.fill" : "star").foregroundColor(Color.yellow)
                        }
                        Text("Rate Awesome Words")
                        Picker("", selection: $currentlyRated) {
                            Text("1").tag(1)
                            Text("2").tag(2)
                            Text("3").tag(3)
                            Text("4").tag(4)
                        }.pickerStyle(SegmentedPickerStyle()).frame(width: 200, height: 44)
                        Spacer()
                    }
                    
                }.onAppear(perform: {
                    isFavorited = book.isFavourite
                })
                .navigationBarTitle(book.title)
            
    }
}

struct DetailWithStarView_Previews: PreviewProvider {
    static var previews: some View {
        let example = Book(ids: UUID(), title: "Harry Potter", author: "Jimmy", isfav: true, currentPage: 0, rating: 1, id: 1, content: ["sadfasfasfafsasf", "adsfasfasf"])
        DetailWithStarView(book: example, isFavorited: example.isFavourite)
    }
}

//
//  ContentView.swift
//  BookReview
//
//  Created by Tim McEwan on 12/22/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var book: BookModel
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                TabView {
                    ScrollView {
                        LazyVStack {
                            
                            ForEach(0..<book.bookStore.count) {i in
                                NavigationLink {
                                    let book = book.bookStore[i]
                                    DetailWithStarView(book: book, isFavorited: book.isFavourite)
                                        
                                } label: {
                                    singleListView(num: i)
                                }
                            }
                            
                        }
                    }
                }
            }
            .navigationTitle("My Library")
            .foregroundColor(Color.black)
        }
    }
    
    // Functions
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

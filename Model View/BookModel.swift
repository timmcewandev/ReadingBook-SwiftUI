//
//  BookModel.swift
//  BookReview
//
//  Created by Tim McEwan on 12/22/22.
//

import Foundation



class BookModel: ObservableObject {
    @Published var bookStore: [Book] = []
    
    init() {
        self.bookStore = ServiceLayer.getBooks()
    }
    
    func switchFavorited(id: UUID, isFav: Bool) {
        for i in 0..<self.bookStore.count {
            if self.bookStore[i].ids == id {
                self.bookStore[i].isFavourite.toggle()
            }
        }
        objectWillChange.send()
    }
    
    func switchNumRating(id: UUID, numRating: Int) {
        for i in 0..<self.bookStore.count {
            if self.bookStore[i].ids == id {
                self.bookStore[i].rating = numRating
            }
        }
        objectWillChange.send()
    }
    
}

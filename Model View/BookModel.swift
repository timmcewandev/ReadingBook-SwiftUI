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
        bookStore = ServiceLayer.getBooks()
        print("\(bookStore.count)")
    }
    
}

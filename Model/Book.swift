//
//  Book.swift
//  BookReview
//
//  Created by Tim McEwan on 12/22/22.
//

import Foundation


class Book : Identifiable, Decodable{
    var ids: UUID?
    var title: String
    var author: String
    var isFavourite: Bool
    var currentPage: Int
    var rating: Int
    var id: Int
    var content: [String]
    
    init(ids: UUID?, title: String, author: String, isfav: Bool, currentPage: Int, rating: Int, id: Int, content: [String]) {
        self.ids = ids
        self.title = title
        self.author = author
        self.isFavourite = isfav
        self.currentPage = currentPage
        self.rating = rating
        self.id = id
        self.content = content
    }
}

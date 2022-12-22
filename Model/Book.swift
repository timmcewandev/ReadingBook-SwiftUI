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
}

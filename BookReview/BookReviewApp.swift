//
//  BookReviewApp.swift
//  BookReview
//
//  Created by Tim McEwan on 12/22/22.
//

import SwiftUI

@main
struct BookReviewApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(BookModel())
        }
    }
}

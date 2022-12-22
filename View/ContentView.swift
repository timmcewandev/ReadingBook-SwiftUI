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
        GeometryReader { geo in
            TabView {
                ScrollView {
                    VStack {
                        ForEach(0..<book.bookStore.count) {i in
                            ZStack {
                                Rectangle()
                            }.frame(width: geo.size.width-20, height: geo.size.height-200)
                        }
                        
                    }
                }
            }
        }
    }
    
    // Functions
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(BookModel())
    }
}

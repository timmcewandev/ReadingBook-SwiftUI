//
//  singleListView.swift
//  BookReview
//
//  Created by Tim McEwan on 12/22/22.
//

import SwiftUI

struct singleListView: View {
    @EnvironmentObject var book: BookModel
    var num: Int
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color.white)
                .cornerRadius(10)
                .shadow(radius: 20)
            VStack(alignment: .leading, spacing: 10.0) {
                
                HStack {
                    Text(book.bookStore[num].title)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.leading)
                    Spacer()
                    
                    if book.bookStore[num].isFavourite {
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 28, height: 28)
                            .foregroundColor(.yellow)
                            .scaledToFit()
                            .padding([.trailing])
                        
                    }
                }
               
                Text(book.bookStore[num].author)
                    .font(.subheadline)
                    .italic()
                    .padding(.leading)
                Image("cover\(book.bookStore[num].id)")
                    .resizable()
                    .cornerRadius(15)
                    .scaledToFit()
            }
            
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
    }
}

struct singleListView_Previews: PreviewProvider {
    static var previews: some View {
        singleListView(num: 0)
    }
}

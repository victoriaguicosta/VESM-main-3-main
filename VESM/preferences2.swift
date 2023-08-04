//
//  preferences2.swift
//  VESM
//
//  Created by scholar on 01/08/2023.
//

import SwiftUI

struct preferences2: View {
    
    @State private var genreIcon = ""
    @State private var movies = false
    @State private var books = false
    @State private var tvseries = false
    
    var body: some View {
        ZStack {
            Color(red:179/255,green:199/255,blue:247/255)
                .ignoresSafeArea()

            VStack {
                Text(genreIcon)
                    .font(.system(size:100))
                    .padding(.top, 100.0)
//                    .padding(.bottom, 100.0)
               Spacer()
                Text("What media do you prefer?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
//                    .padding(.top, 50.0)
                    .padding(.bottom, 50.0)
                
//                HStack {
//                    Spacer()
                    Button("Movies") {
                        movies.toggle()
                        genreIcon = "🎬"
                    }
                    .buttonStyle(.borderedProminent)
                    .foregroundColor(.black)
                    .tint(movies == true ? Color(red: 230/255, green: 48/255, blue: 138/255) : Color(red: 248/255, green: 184/255, blue: 208/255))
                    .padding(.bottom, 50.0)
                    Button("Books") {
                        books.toggle()
                        genreIcon = "📚"
                    }
                    .buttonStyle(.borderedProminent)
                    .foregroundColor(.black)
                    .tint(books == true ? Color(red: 230/255, green: 48/255, blue: 138/255) : Color(red: 248/255, green: 184/255, blue: 208/255))
                    .padding(.bottom, 50.0)
                    Button("TV Series") {
                        tvseries.toggle()
                        genreIcon = "📺"
                    }
                    .buttonStyle(.borderedProminent)
                    .foregroundColor(.black)
                    .tint(tvseries == true ? Color(red: 230/255, green: 48/255, blue: 138/255) : Color(red: 248/255, green: 184/255, blue: 208/255))
                    Spacer()
                    
//                }
//                .padding(.top, -15.0)
//                Spacer()
                
                HStack {
                    
                    NavigationLink(destination: preferences3()) {
                        Text("⇥")
                            .font(.largeTitle)
                            
                    }
                }
                Spacer()
            }
        }
    }
}

struct preferences2_Previews: PreviewProvider {
    static var previews: some View {
        preferences2()
    }
}

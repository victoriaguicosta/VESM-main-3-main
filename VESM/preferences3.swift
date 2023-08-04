//
//  preferences3.swift
//  VESM
//
//  Created by scholar on 01/08/2023.
//

import SwiftUI

struct preferences3: View {
    @State private var genreIcon = ""
    @State private var genreIcon2 = ""
    
    @State private var Change1 = false
    @State private var Change2 = false
    @State private var Change3 = false
    @State private var Change4 = false
    @State private var Change5 = false
    @State private var Change6 = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red:179/255,green:199/255,blue:247/255)
                    .ignoresSafeArea()
                
                VStack() {
                    Text("\(genreIcon) \(genreIcon2)")
                        .font(.system(size: 100))
                        .padding(.top, -50.0)
                        .padding(.bottom, 100.0)
                    Text("What's your age?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.top, -50.0)
                    //                    .padding(.top, -150.0)
                    
                    
                    
                    HStack{
                        Spacer()
                        Button("Toddler"){
                            Change1.toggle()
                            updateGenreIcons()
                        }
                        .buttonStyle(.borderedProminent)
                        .foregroundColor(.black)
                        .tint(Change1 == true ? .yellow : .pink)
                        
                        
                        
                        Spacer()
                        Button("Child"){
                            Change2.toggle()
                            updateGenreIcons()
                            
                        }
                        .buttonStyle(.borderedProminent)
                        .foregroundColor(.black)
                        .tint(Change2 == true ? .yellow : .pink)
                        Spacer()
                        Button("Teen"){
                            Change3.toggle()
                            updateGenreIcons()
                        }
                        .buttonStyle(.borderedProminent)
                        .foregroundColor(.black)
                        .tint(Change3 == true ? .yellow : .pink)
                        Spacer()
                    }
                    //                .padding(.bottom,20.0)
                    .padding(20.0)
                    
                    HStack{
                        Spacer()
                        Button("Young Adult"){
                            Change4.toggle()
                            updateGenreIcons()
                        }
                        .buttonStyle(.borderedProminent)
                        .foregroundColor(.black)
                        .tint(Change4 == true ? .yellow : .pink)
                        
                        
                        
                        Spacer()
                        Button("Adult"){
                            Change5.toggle()
                            updateGenreIcons()
                        }
                        .buttonStyle(.borderedProminent)
                        .foregroundColor(.black)
                        .tint(Change5 == true ? .yellow : .pink)
                        Spacer()
//                        Button("Drama"){
//                            Change6.toggle()
//                            genreIcon = "🎭"
//                            genreIcon2 = "🎭"
//                        }
//                        .buttonStyle(.borderedProminent)
//                        .foregroundColor(.black)
//                        .tint(Change6 == true ? .yellow : .pink)
//                        Spacer()
                    }
                    
                    NavigationLink(destination: preferences4()) {
                        Text("Next Question")
                        
                    }
                    .padding(.top, 30.0)
                    
                    
                    
                    
                }
                
                
            }
        }
    }
    private func updateGenreIcons() {
        var selectedGenres: [String] = []
        if Change1 {
            selectedGenres.append("👶")
        }
        if Change2 {
            selectedGenres.append("🧒")
        }
        if Change3 {
            selectedGenres.append("🧑")
        }
        if Change4 {
            selectedGenres.append("🧑‍🦱")
        }
        if Change5 {
            selectedGenres.append("👨‍🦱")
        }
        
        if selectedGenres.count >= 2 {
            genreIcon = selectedGenres[0]
            genreIcon2 = selectedGenres[1]
        } else if selectedGenres.count == 1 {
            genreIcon = selectedGenres[0]
            genreIcon2 = ""
        } else {
            genreIcon = ""
            genreIcon2 = ""
        }
    }
}

struct preferences3_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}






















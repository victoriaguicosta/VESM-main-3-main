//
//  preferences1.swift
//  VESM
//
//  Created by scholar on 01/08/2023.
//

import SwiftUI

struct preferences1: View {
    
    @State private var genreIcon = ""
    @State private var genreIcon2 = ""
    
    @State private var ChangeBgColor1 = false
    @State private var ChangeBgColor2 = false
    @State private var ChangeBgColor3 = false
    @State private var ChangeBgColor4 = false
    @State private var ChangeBgColor5 = false
    @State private var ChangeBgColor6 = false
    @State private var ChangeBgColor7 = false
    @State private var ChangeBgColor8 = false
    @State private var ChangeBgColor9 = false

    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red:179/255,green:199/255,blue:247/255)
                    .ignoresSafeArea()
                VStack {
                    Text("\(genreIcon) \(genreIcon2)")
                        .font(.system(size: 100))
                        .padding(.top, 30.0)
                        .padding(.bottom,-30.0)
//                    HStack {
//                        Spacer()
//                        Text(genreIcon)
//                            .font(.system(size: 50))
//                            .lineLimit(nil)
//                            .padding(.bottom, 20.0)
//                        Spacer()
//                        Text(genreIcon)
//                            .font(.system(size: 50))
//                            .padding(.top, 20.0)
//                        Spacer()
//                        Text(genreIcon)
//                            .font(.system(size: 50))
//                            .padding(.top, 20.0)
//                        Spacer()
//                        Text(genreIcon)
//                            .font(.system(size: 50))
//                            .multilineTextAlignment(.leading)
//                        Spacer()
//                    }
                    Spacer()
                    Text("What genres do you prefer?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.top, -50.0)
                    
                    HStack{
                        Spacer()
                        Button("Action"){
                            ChangeBgColor1.toggle()
                            updateGenreIcons()
                        }
                        .buttonStyle(.borderedProminent)
                                                .foregroundColor(.black)
                                                .tint(ChangeBgColor1 == true ? Color(red: 230/255, green: 48/255, blue: 138/255) : Color(red: 248/255, green: 184/255, blue: 208/255))


                        
                        Spacer()
                        Button("Comedy"){
                            ChangeBgColor2.toggle()
                            updateGenreIcons()
                        }
                        .buttonStyle(.borderedProminent)
                                                .foregroundColor(.black)
                .tint(ChangeBgColor2 == true ? Color(red: 230/255, green: 48/255, blue: 138/255) : Color(red: 248/255, green: 184/255, blue: 208/255))
                        Spacer()
                        Button("Drama"){
                            ChangeBgColor3.toggle()
                            updateGenreIcons()
                        }
                        .buttonStyle(.borderedProminent)
                        .foregroundColor(.black)
                        .tint(ChangeBgColor3 == true ? Color(red: 230/255, green: 48/255, blue: 138/255) : Color(red: 248/255, green: 184/255, blue: 208/255))
                        Spacer()
                    }
            
  
                    
                    .padding(.bottom, 20.0)
                    .padding(.top, 40.0)
                    HStack{
                        Spacer()
                        Button("Fantasy"){
                            ChangeBgColor4.toggle()
                            updateGenreIcons()
                        }
                        .buttonStyle(.borderedProminent)
                                                .foregroundColor(.black)
                                                .tint(ChangeBgColor4 == true ? Color(red: 230/255, green: 48/255, blue: 138/255) : Color(red: 248/255, green: 184/255, blue: 208/255))
                        Spacer()
                        Button("Horror"){
                            ChangeBgColor5.toggle()
                            updateGenreIcons()
                        }
                        .buttonStyle(.borderedProminent)
                                                .foregroundColor(.black)
                                                .tint(ChangeBgColor5 == true ? Color(red: 230/255, green: 48/255, blue: 138/255) : Color(red: 248/255, green: 184/255, blue: 208/255))
                        Spacer()
                        Button("Romance"){
                            ChangeBgColor6.toggle()
                            updateGenreIcons()
                        }
                        .buttonStyle(.borderedProminent)
                                                .foregroundColor(.black)
                                                .tint(ChangeBgColor6 == true ? Color(red: 230/255, green: 48/255, blue: 138/255) : Color(red: 248/255, green: 184/255, blue: 208/255))
                        Spacer()
                    }
                    .padding(.bottom, 20.0)
                    HStack{
                        Spacer()
                        Button("Sci-Fi"){
                            ChangeBgColor7.toggle()
                            updateGenreIcons()
                        }
                        .buttonStyle(.borderedProminent)
                                                .foregroundColor(.black)
                                                .tint(ChangeBgColor7 == true ? Color(red: 230/255, green: 48/255, blue: 138/255) : Color(red: 248/255, green: 184/255, blue: 208/255))
                        Spacer()
                        Button("Thriller"){
                            ChangeBgColor8.toggle()
                            updateGenreIcons()
                        }
                        .buttonStyle(.borderedProminent)
                                                .foregroundColor(.black)
                                                .tint(ChangeBgColor8 == true ? Color(red: 230/255, green: 48/255, blue: 138/255) : Color(red: 248/255, green: 184/255, blue: 208/255))
                        Spacer()
                        Button("Mystery"){
                            ChangeBgColor9.toggle()
                            updateGenreIcons()
                        }
                        .buttonStyle(.borderedProminent)
                                                .foregroundColor(.black)
                                                .tint(ChangeBgColor9 == true ? Color(red: 230/255, green: 48/255, blue: 138/255) : Color(red: 248/255, green: 184/255, blue: 208/255))
                        Spacer()
                    }
                    
                    NavigationLink(destination: preferences2()) {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label Content@*/Text("⇥")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.top)/*@END_MENU_TOKEN@*/
                    }
                    .padding(50.0)

                    Spacer()
                }
            }
            }
        }
    private func updateGenreIcons() {
        var selectedGenres: [String] = []
        if ChangeBgColor1 {
            selectedGenres.append("🥊")
        }
        if ChangeBgColor2 {
            selectedGenres.append("🤣")
        }
        if ChangeBgColor3 {
            selectedGenres.append("🎭")
        }
        if ChangeBgColor4 {
            selectedGenres.append("🧚🏼‍♀️")
        }
        if ChangeBgColor5 {
            selectedGenres.append("👻")
        }
        if ChangeBgColor6 {
            selectedGenres.append("❤️‍🔥")
        }
        if ChangeBgColor7 {
            selectedGenres.append("🔭")
        }
        if ChangeBgColor8 {
            selectedGenres.append("🎢")
        }
        if ChangeBgColor9 {
            selectedGenres.append("😶‍🌫️")
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

struct preferences1_Previews: PreviewProvider {
    static var previews: some View {
        preferences1()
    }
}

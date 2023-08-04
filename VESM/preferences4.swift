//
//  preferences4.swift
//  VESM
//
//  Created by scholar on 02/08/2023.
//

import SwiftUI

struct preferences4: View {
@State private var ChangeBgColor1 = false
@State private var ChangeBgColor2 = false
@State private var ChangeBgColor3 = false
@State private var ChangeBgColor4 = false
@State private var ChangeBgColor5 = false
@State private var ChangeBgColor6 = false


    var body: some View {
        ZStack {
            Color(red:179/255,green:199/255,blue:247/255)
                .ignoresSafeArea()
            
        VStack {
            Spacer()
            Text("And finally, what streaming platforms do you have access to?").font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 230)
            
            
            HStack {
                Button("Netflix") {
                    ChangeBgColor1.toggle()
                }
                    .buttonStyle(.borderedProminent)
                                            .foregroundColor(.black)
                                            .tint(ChangeBgColor1 == true ? Color(red: 230/255, green: 48/255, blue: 138/255) : Color(red: 248/255, green: 184/255, blue: 208/255))
                Spacer()
                Button("Amazon Prime") {
                    ChangeBgColor2.toggle()
                }
                    .buttonStyle(.borderedProminent)
                                            .foregroundColor(.black)
                                            .tint(ChangeBgColor2 == true ? Color(red: 230/255, green: 48/255, blue: 138/255) : Color(red: 248/255, green: 184/255, blue: 208/255))
                Spacer()
                Button("Disney+") {
                    ChangeBgColor3.toggle()
                }
                    .buttonStyle(.borderedProminent)
                                            .foregroundColor(.black)
                                            .tint(ChangeBgColor3 == true ? Color(red: 230/255, green: 48/255, blue: 138/255) : Color(red: 248/255, green: 184/255, blue: 208/255))
            }
            .padding(.top, -160.0)
            
            HStack {
                Button("HBO Max") {
                    ChangeBgColor4.toggle()
                }
                    .buttonStyle(.borderedProminent)
                                            .foregroundColor(.black)
                                            .tint(ChangeBgColor4 == true ? Color(red: 230/255, green: 48/255, blue: 138/255) : Color(red: 248/255, green: 184/255, blue: 208/255))
                Spacer()
                Button("Hulu") {
                    ChangeBgColor5.toggle()
                }
                    .buttonStyle(.borderedProminent)
                                            .foregroundColor(.black)
                                            .tint(ChangeBgColor5 == true ? Color(red: 230/255, green: 48/255, blue: 138/255) : Color(red: 248/255, green: 184/255, blue: 208/255))
                Spacer()
                Button("Apple TV") {
                    ChangeBgColor6.toggle()
                }
                    .buttonStyle(.borderedProminent)
                                            .foregroundColor(.black)
                                            .tint(ChangeBgColor6 == true ? Color(red: 230/255, green: 48/255, blue: 138/255) : Color(red: 248/255, green: 184/255, blue: 208/255))
            }
            .padding(.top, -96)
            
            HStack {
                NavigationLink(destination:recommendations()) {Text("⇥")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
            }
            
            Spacer()
            Text("Find your' results on the next page!")
                
        } .padding(30.0)
        }
    }

}

struct preferences4_Previews: PreviewProvider {
    static var previews: some View {
        preferences4()
    }
}

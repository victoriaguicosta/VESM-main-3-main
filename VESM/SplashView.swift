//
//  SplashView.swift
//  tester2
//
//  Created by scholar on 01/08/2023.
//

import SwiftUI

struct SplashView: View {
    
    @State private var  isActive: Bool = false
    
//    @State private var nextButtonTapped = false
//        @StateObject private var preferencesManager = PreferencesManager()
    //mm
    
    var body: some View {
//        NavigationStack {
            ZStack {
//                Color(red: 0.97, green:0.72, blue:0.81)
//                    .ignoresSafeArea()
                if self.isActive {
                    preferences1()
                } else {
                    
                    Rectangle()
                        .fill(Color(red: 0.97, green:0.72, blue:0.81))
                        .ignoresSafeArea()
                    Image("logo")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    
                }
//                VStack {
//                    Text("welcome to")
//                        .font(.largeTitle)
//                        .fontWeight(.bold)
//
//                    preferences()
//                                    .environmentObject(preferencesManager)
                    
//                    NavigationLink(destination: preferences()) {
//                        Image("logo")
//                            .resizable(resizingMode: .stretch)
//                            .aspectRatio(contentMode: .fit)
                        
//                        Button("Next") {
//                                        nextButtonTapped = true // Update the nextButtonTapped state
//                                        let selectedGenres = preferencesManager.filterResults()
//                                        // Do something with the selectedGenres, like filtering out the results based on them
//                                    }
                        
                    }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
                }
//            }
//        }
    }
//}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
       SplashView()
    }
}

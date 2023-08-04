//
//  recommendations.swift
//  VESM
//
//  Created by scholar on 02/08/2023.
//

import SwiftUI

struct recommendations: View {
    @State private var selected: Bool = false
    @State private var showingPopover = false
    @State private var showingPopover2 = false
    
    var body: some View {
        ZStack {
            Color(red: 161/255, green: 0, blue:32/255)
                .ignoresSafeArea()
            NavigationStack {
                VStack() {
                    Text("Personal Picks For You")
                        .foregroundColor(Color(red:252/255, green: 201/255, blue: 181/255))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text("Romance")
                        .foregroundColor(Color(red:252/255, green: 201/255, blue: 181/255))
                        .font(.title2)
                        .fontWeight(.medium)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    
                }
                HStack()  {
                    Spacer()
                    Button {
                        showingPopover = true
                    } label: {
                        Image("10 thing I hate about You ")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                        
                    }
                    .popover(isPresented: $showingPopover) {
                        Spacer()
                        Text("10 thing I hate about You")
                            .font(.largeTitle)
                            .fontWeight(.medium)
                            .foregroundColor(Color.red)
                            .padding(.trailing, 130.0)
                            .padding(.bottom)
                            .padding(.top)
                        
                        Text("A high-school boy, Cameron, cannot date Bianca until her anti-social older sister, Kat, has a boyfriend. So, Cameron pays a mysterious boy, Patrick, to charm Kat.")
                            .font(.system(size: 20))
                            .fontWeight(.medium)
                            .padding(.leading)
                        
                        Spacer()
//                        Text("Available at:")
//                        //                    Text("hulu" "amazon" "iTunes" "Google Play")
                        
                        
                        Spacer()
                        Text("Trailer")
                        
                        Text("https://youtu.be/uE7qjQlfoRs")
                        
                    }
                    
                    
                    Spacer()
                    Button {
                        
                    } label: {
                        Image("Pretty Woman")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Image("Me Before You")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    Spacer()
                    
                }
                //
                HStack {
                    
                    Spacer()
                    Button {
                        
                    } label: {
                        Image("The Proposal")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Image("Love Rosie")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Image("The Notebook")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    Spacer()
                }
                
                
                VStack {
                    Text("Comedy")}
                .foregroundColor(Color(red:252/255, green: 201/255, blue: 181/255))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                
                HStack {
                    Spacer()
                    Button {
                        //showingPopover2 = true
                    } label: {
                        
                        Image("Clueless")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                   // .popover(isPresented: $showingPopover2) {
                    //    Text("")
                        
                        //                    Image("Clueless")
                        //                        .resizable()
                        //                        .aspectRatio(contentMode: .fit)
                        
                        
                  //  }
                    
                    
                    Spacer()
                    Button {
                        showingPopover2 = true
                    } label: {
                        Image("Crazy Stupid Love")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .popover(isPresented: $showingPopover2)
                        {
                            Spacer()
                            Text("Crazy Stupid Love")
                                .font(.largeTitle)
                                .fontWeight(.medium)
                                .foregroundColor(Color.red)
                                .padding(.trailing, 130.0)
                                .padding(.bottom)
                                .padding(.top)
                            
                            Text("After middle-aged, divorced Cal befriends successful ladies' man Jacob, he finds it easier to pick up women, but he also begins to understand how he messed up his marriage. Meanwhile, against his judgment, Jacob falls in love with a woman and needs Cal's help to learn how to be faithful.")
                                .font(.system(size: 20))
                                .fontWeight(.medium)
                                .padding(.horizontal)
                            
                            Spacer()
                        
                    
                            
                            
                            Spacer()
                            Text("Trailer")
                            
                            Text("https://youtu.be/WAZOAm3aiVM")
                            
                        }
                        
                        
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Image("Sex and the City")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    Spacer()
                }
                HStack {
                    Spacer()
                    Button {
                        
                    } label: {
                        Image("The Proposal")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Image("The Chocolate Factory")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Image("Bridesmaids")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    Spacer()
                }
                Spacer()
                //            NavigationStack {
                //
                //
                //                HStack {
                //                    NavigationLink(destination: Text("Home")) {
                //                        Image(systemName: "house.fill")
                //                    }
                //                    NavigationLink(destination: Text("About Us")) {
                //                        Image(systemName: "info.square.fill")
                //
                //                    }
                //
                //                }
                //            }
                    .toolbar {
                        ToolbarItemGroup(placement: .status) {
                            HStack {
                                
                                NavigationLink(destination: SplashView()) {
                                    Image(systemName: "house.fill")
                                        .tint(Color(red:252/255, green: 201/255, blue: 181/255))
                                }
                                
                                
                                NavigationLink(destination: profile()) {
                                    Image(systemName: "person.fill")
                                        .tint(Color(red:252/255, green: 201/255, blue: 181/255))
                                    
                                }
                                
                                NavigationLink(destination: ContentView()) {
                                    Image(systemName: "note.text.badge.plus")
                                        .tint(Color(red:252/255, green: 201/255, blue: 181/255))
                                }
                               
                                NavigationLink(destination: aboutus()) {
                                    Image(systemName: "heart")
                                        .tint(Color(red:252/255, green: 201/255, blue: 181/255))
                                }
                                
                            }
                        }
                    }
            }
        }
    }
}
    
    struct recommendations_Previews: PreviewProvider {
        static var previews: some View {
            recommendations()
        }
    }

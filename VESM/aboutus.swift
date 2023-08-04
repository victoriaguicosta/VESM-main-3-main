//
//  aboutus.swift
//  VESM
//
//  Created by scholar on 03/08/2023.
//

import SwiftUI

struct aboutus: View {
    var body: some View {
        ZStack {
            Image("image")
                .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                .ignoresSafeArea()
//            Color(red: 224/255, green: 102/255, blue: 102/255)
//                .ignoresSafeArea()
                
            
            VStack {
                Text("About Us")
                    .font(.system(size:40))
                    .fontWeight(.heavy)
                    .padding(.trailing, 180.0)
                    .padding(.top, 150 )
                    .padding(.bottom)
                Text("At Eureka!, we cater to your unique tastes, curating personalized recommendations for an exceptional entertainment experience. Our vast library includes heart-pounding action, side-splitting comedies, heartwarming romances, and captivating dramas, ensuring there's something for everyone. Say goodbye to endless scrolling; Eureka! brings your favorite entertainment to your fingertips. And that's not all – it's a vibrant community where you can engage, share thoughts, and uncover hidden treasures through reviews and discussions. Welcome to Eureka! – where preferences meet pure bliss. ")
                    .fontWeight(.medium)
                    .padding(.horizontal)
                Spacer()
                //            Text("So, what are you waiting for? Download Eureka! now and let us be your personal entertainment genie. Unlock a world of captivating experiences, uncover new favorites, and embark on unforgettable cinematic and digital adventures. With Eureka! in your hands, your entertainment journey is destined to be nothing short of extraordinary. Happy discovering!")
                //            Spacer()
            }
        }
    }
}

struct aboutus_Previews: PreviewProvider {
    static var previews: some View {
        aboutus()
    }
}

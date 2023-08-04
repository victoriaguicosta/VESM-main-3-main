//
//  profile.swift
//  VESM
//
//  Created by scholar on 03/08/2023.
//

import SwiftUI

struct profile: View {
    var body: some View {
        ZStack {
//            Color(red:, green:, blue:)
            Text("Your Profile")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.leading)
                .padding(.bottom, 675.0)
        }
    }
}

struct profile_Previews: PreviewProvider {
    static var previews: some View {
        profile()
    }
}

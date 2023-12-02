//
//  profile.swift
//  ExTabView
//
//  Created by Student07 on 21/11/23.
//

import SwiftUI

struct profile: View {
    var body: some View {
        VStack{
            Text("Profile View")
                .fontWeight(.medium)
                .font(.system(size: 50))
            Image(systemName: "person")
                .resizable()
                .frame(width: 400,height: 400)
        }
    }
}

struct profile_Previews: PreviewProvider {
    static var previews: some View {
        profile()
    }
}

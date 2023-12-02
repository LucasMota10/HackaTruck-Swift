//
//  photos.swift
//  ExTabView
//
//  Created by Student07 on 21/11/23.
//

import SwiftUI

struct photos: View {
    var body: some View {
        ScrollView{
            VStack{
                
                
                Image(systemName: "hare")
                    .resizable()
                    .frame(width: 300,height: 250)
                Image(systemName: "tortoise")
                    .resizable()
                    .frame(width: 400,height: 250)
                Image(systemName: "lizard")
                    .resizable()
                    .frame(width: 300,height: 250)
                Image(systemName: "bird")
                    .resizable()
                    .frame(width: 400,height: 250)
                Image(systemName: "ant")
                    .resizable()
                    .frame(width: 400,height: 250)
            }
        }
    }
}

struct photos_Previews: PreviewProvider {
    static var previews: some View {
        photos()
    }
}

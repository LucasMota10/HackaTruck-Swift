//
//  D2.swift
//  Aula 01
//
//  Created by Student07 on 16/11/23.
//

import SwiftUI

struct D2: View {
    var body: some View {
        VStack{
            ZStack{
                Image("caminhao")
                    .resizable()
                    .frame(width: 400, height: 250)
                    .offset(y: -250)
                Image("caminhao")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .offset(y: 70)
                Text("HackaTruck")
                    .fontWeight(.black)
                    .foregroundColor(Color.blue)
                    .offset(y: 5)
                    .font(.system(size: 32))
                Rectangle()
                    .frame(width: 250, height: 250)
                    .offset(y: 380)
                HStack{
                    Text("Maker")
                        .foregroundColor(Color.yellow)
                        .offset(y: 320)
                        .font(.system(size: 32))
                    Text("Space")
                        .foregroundColor(Color.red)
                        .offset(y: 320)
                        .font(.system(size: 32))
                }
            }
        }
    }
}




struct D2_Previews: PreviewProvider {
    static var previews: some View {
        D2()
    }
}

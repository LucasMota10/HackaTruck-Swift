//
//  ContentView.swift
//  Aula 01
//
//  Created by Student07 on 16/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("caminhao")
                .resizable()
                .frame(width: 350, height: 280)
            Text("HackTruck")
                .fontWeight(.black)
                .foregroundColor(Color.blue)
                .font(.system(size: 32))
            HStack{
                Text("Maker")
                    .fontWeight(.black)
                    .foregroundColor(Color.yellow)
                    .font(.system(size: 32))
                Text("Space")
                    .fontWeight(.black)
                    .foregroundColor(Color.red)
                    .font(.system(size: 32))
            }
    
        }
        .padding()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

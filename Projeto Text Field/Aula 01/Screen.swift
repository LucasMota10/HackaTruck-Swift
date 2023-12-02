//
//  Screen.swift
//  Aula 01
//
//  Created by Student07 on 16/11/23.
//

import SwiftUI


struct Screen: View {
    @State private var name: String = "Fulano"
    @State private var showingAlert = false
    var body: some View {
        ZStack{
           Image("caminhao")
                .resizable()
                .frame(width: 500, height: 860)
                .opacity(0.2)
                .blur(radius: 5)
            VStack{
                Image("logo")
                    .resizable()
                    .frame(width: 250, height: 125)
                    .offset(y: 100)
                Image("truck")
                    .resizable()
                    .frame(width: 250, height: 125)
                    .offset(y: 100)
                Button("Entrar") {
                        showingAlert = true
                        }
                        .offset(y: 220)
                        .font(.system(size: 25))
                        .alert(isPresented: $showingAlert) {
                                    Alert(title: Text("ALERTA !"), message: Text("você irá iniciar o desafio da aula agora"), dismissButton: .default(Text("Vamos Lá")))
                                }
                
            }
            VStack{
                Text("Bem vindo, \(name)!")
                    .fontWeight(.medium)
                    .offset(y: -300)
                    .font(.system(size: 37))
                TextField("Digite Seu nome", text: $name)
                    .offset(y: -280)
                    .offset(x: 212)
                    .font(.system(size: 25))
                    
            }
            HStack{
                Text("00:02")
                    .fontWeight(.medium)
                    .offset(y: -410)
                    .offset(x: -90)
                    .font(.system(size: 20))
                Image(systemName: "wifi")
                    .offset(y: -410)
                    .offset(x: 105)
                Image(systemName: "battery.75")
                    .offset(y: -410)
                    .offset(x: 110)
            }
        }
    }
}





struct Screen_Previews: PreviewProvider {
    static var previews: some View {
        Screen()
    }
}

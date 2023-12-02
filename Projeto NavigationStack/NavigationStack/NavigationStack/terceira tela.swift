//
//  terceira tela.swift
//  NavigationStack
//
//  Created by Student07 on 21/11/23.
//

import SwiftUI

struct terceira_tela: View {
    @State private var nome = "Adilson"
    
    var body: some View {
        VStack{
            NavigationStack{
                TextField("Digite seu nome", text: $nome)
                    .offset(x: 20)
                Text("Estamos percorrendo um caminho, \(nome) ")
                NavigationLink(destination: quarta_tela(x: nome)){
                   Text("Acessar Tela")
                }
            }
        }
    }
}

struct terceira_tela_Previews: PreviewProvider {
    static var previews: some View {
        terceira_tela()
    }
}

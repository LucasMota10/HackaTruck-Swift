//
//  quarta tela.swift
//  NavigationStack
//
//  Created by Student07 on 21/11/23.
//

import SwiftUI

struct quarta_tela: View {
    @State var x = "Adilson"
    var body: some View {
        Text("Volte, \(x)")
    }
}

struct quarta_tela_Previews: PreviewProvider {
    static var previews: some View {
        quarta_tela()
    }
}

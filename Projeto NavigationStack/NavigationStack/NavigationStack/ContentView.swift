//
//  ContentView.swift
//  NavigationStack
//
//  Created by Student07 on 21/11/23.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack{
            Text("Essa é a nossa Sheet View")
            Text("Deslize para sair")
        }
        
    }
}

struct ContentView: View {
@State private var showingSheet = false

    var body: some View {
        VStack{
        NavigationStack{
            NavigationLink(destination: segunda_tela()){
                Image("truck")
                    .resizable()
                    .frame(width: 40,height: 30)
            };
            
            NavigationLink(destination: terceira_tela()){
                Text("Modo 2")
            };
            Button("Modo 3") {
                        showingSheet.toggle()
                    }
            .sheet(isPresented: $showingSheet) {
                        SheetView()
                    }
        }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

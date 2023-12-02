//
//  ContentView.swift
//  Calculadora IMC
//
//  Created by Student07 on 20/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var altura = 0.0
    @State private var peso = 0.0
    @State private var showingAlert = false
    @State private var imc = "normal"
    @State var tipo = "normal"
    @State var cor : UIColor = .white
    
    var body: some View {
        ZStack{
            
            Color(cor)
                .ignoresSafeArea()
                .animation(.default, value: cor)
            
            VStack{
                
                HStack{
                    Text("00:33")
                        .offset(y: -130)
                        .offset(x: -80)
                        .fontWeight(.medium)
                        .font(.system(size: 20))
                    Image(systemName: "wifi")
                        .offset(y: -130)
                        .offset(x: 90)
                    Image(systemName: "battery.75")
                        .offset(y: -130)
                        .offset(x: 90)
                }
                Text("Calculadora de IMC")
                    .offset(y: -100)
                    .fontWeight(.medium)
                    .font(.system(size: 37))
                TextField("Digite sua Altura", value: $altura, format: .number)
                    .offset(y: -100)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                TextField("Digite seu Peso", value: $peso, format: .number)
                    .offset(y: -90)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Button("Calcular") {
                    showingAlert = true
                    var imc: Double{
                        Double(peso/(altura*altura))
                    }
                    if(Double(imc) < 18.5){
                        cor = UIColor(Color("verde"))
                        tipo = "Baixo Peso"
                    }
                    if(Double(imc) >= 18.5 && Double(imc) <= 24.99){
                        cor = UIColor(Color("verde claro"))
                        tipo = "Normal"
                    }
                    if(Double(imc) >= 25 && Double(imc) <= 29.99){
                        cor = UIColor(Color("laranja claro"))
                        tipo = "Sobrepeso"
                    }
                    if(Double(imc) > 30){
                        cor = UIColor(Color("laranja"))
                        tipo = "Obesidade"
                    }
                    
                    
                    
                }
                .buttonStyle(.borderedProminent)
                .font(.system(size: 25))
                .offset(y: -70)
                
                Text(String(tipo))
                    .font(.system(size: 25))
                
                Image("tabela")
                    .resizable()
                    .frame(width: 400,height: 250)
                    .offset(y: 100)
                
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

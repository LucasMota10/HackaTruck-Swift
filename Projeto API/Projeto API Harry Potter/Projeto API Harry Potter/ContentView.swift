//
//  ContentView.swift
//  Projeto API Harry Potter
//
//  Created by Student07 on 27/11/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewmodel = ViewModel()
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(colors: [.red, .yellow],
                               startPoint: .top,
                               endPoint: .center)
                .ignoresSafeArea()
                
                VStack{
                    VStack{
                        Text("Bem vindo(a) ao mundo de Harry Potter")
                        
                            .fontWeight(.bold)
                            .font(.system(size: 19))
                            .padding(.bottom)
                        HStack{
                            Text("Clique em um personagem para acessar mais informações sobre ele")
                                .font(.system(size: 17))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .padding([.leading, .bottom, .trailing])
                            
                        }
                    }
                    ZStack{
                        
                        AsyncImage(url: URL(string: "https://static.wikia.nocookie.net/harrypotter/images/1/15/Gryffindor_crest_by_readingnerd0415_de0kjre-pre.png/revision/latest?cb=20220722063443&path-prefix=pt-br")) { image in
                            image.resizable()
                                .frame(width: 200,height: 200)
                                .opacity(0.5)
                        } placeholder: {
                            ProgressView()
                            
                        }
                        ScrollView(.vertical){
                            
                            ForEach(viewmodel.personagens,id: \.id){ index in
                                NavigationLink(destination: infos(cap: index)){
                                    HStack{
                                        AsyncImage(url: URL(string: index.image!)){ image in
                                            image.resizable()
                                                .frame(width: 60,height: 60)
                                            
                                        } placeholder: {
                                            ProgressView()
                                            
                                        }
                                        .padding([.top, .leading, .trailing])
                                        
                                        Text(index.name!)
                                            .foregroundColor(.black)
                                            .fontWeight(.bold)
                                            .font(.headline)
                                        Spacer()
                                        
                                    }
                                }
                                Divider()
                                    .frame(height: 1)
                                    .overlay(.black)
                            }
                        }
                    }
                }
            }
        }
        .onAppear(){
            viewmodel.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

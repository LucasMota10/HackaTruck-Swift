//
//  ContentView.swift
//  Spotify
//
//  Created by Student07 on 23/11/23.
//

import SwiftUI

struct music: Identifiable{
    var id: Int
    var nome: String
    var capa: String
    var artista: String
}

struct music2: Identifiable{
    var id: Int
    var Capa: String
}
var arraymusic = [
    music(id: 1, nome: "Amiga da Minha Mulher", capa: "https://upload.wikimedia.org/wikipedia/pt/6/6d/Capa_de_M%C3%BAsicas_para_Churrasco%2C_Vol._1.jpg",artista: "Seu Jorge"),
    music(id: 2, nome: "I Wanna be Yours", capa: "https://monkeybuzz.com.br/wp-content/uploads/2013/07/arctic-monkeys-am-album-2013-arte-do-disco.jpg",artista: "Arctic Monkeys"),
    music(id: 3, nome: "Another Brink in the Wall", capa: "https://m.media-amazon.com/images/I/610RGJlG1ZL._AC_UF350,350_QL50_.jpg",artista: "Pynk Floyd"),
    music(id:4, nome: "Teste 4",capa:"123",artista:"Teste 2"),
    music(id:5, nome: "Teste 5",capa:"123",artista:"Teste 2"),
    music(id:6, nome: "Teste 6",capa:"123",artista:"Teste 2"),
    music(id:7, nome: "Teste 7",capa:"123",artista:"Teste 2"),
    music(id:8, nome: "Teste 8",capa:"123",artista:"Teste 2"),
    music(id:9, nome: "Teste 9",capa:"123",artista:"Teste 2"),
    music(id:10, nome: "Teste 10",capa:"123",artista:"Teste 2")
]

var arraymusic2 = [
    music2(id:1,Capa: "https://imagens.brasil.elpais.com/resizer/LL21x34WQ8Sk61neUpl2MChd2dQ=/414x0/filters:focal(191x98:201x108)/cloudfront-eu-central-1.images.arcpublishing.com/prisa/J4MZMQKLQYOZ7RQXT3P5TPN7QM.jpg"),
    
    music2(id:2,Capa: "https://upload.wikimedia.org/wikipedia/pt/b/ba/313x0w.jpg"),
    
    music2(id:3,Capa: "https://cdns-images.dzcdn.net/images/cover/12f613719a9d60755b90de1030c35741/500x500.jpg")
    
]

struct ContentView: View {
    var body: some View {
        NavigationStack{
            
            ZStack{
                LinearGradient(colors: [.blue, .black],
                               startPoint: .top,
                               endPoint: .center)
                .ignoresSafeArea()
                
                VStack{
                    ScrollView {
                        Spacer()
                        Image("truck")
                            .resizable()
                            .frame(width: 220,height: 220)
                            .ignoresSafeArea()
                        VStack{
                            HStack{
                                Text("HackaFM")
                                    .fontWeight(.medium)
                                    .foregroundStyle(.white)
                                    .font(.system(size: 37))
                                    .ignoresSafeArea()
                                    .padding()
                                Spacer()
                            }
                            HStack{
                                Image("truck")
                                    .resizable()
                                    .padding(.leading)
                                    .frame(width: 40,height: 30)
                                    .ignoresSafeArea()
                                Text("HackaSong")
                                    .fontWeight(.medium)
                                    .foregroundStyle(.white)
                                    .font(.system(size: 15))
                                    .ignoresSafeArea()
                                Spacer()
                            }
                        }
                        
                        ForEach(arraymusic,id:\.id) { index in
                            NavigationLink(destination: TelaMusica(cap : index)){
                                HStack{
                                    AsyncImage(url: URL(string: index.capa)) { image in
                                        image.resizable()
                                            .frame(width: 60,height: 60)
                                        
                                    } placeholder: {
                                        ProgressView()
                                            .frame(width: 60,height: 60)
                                    }
                                    .padding([.top, .leading, .trailing])
                                    
                                    VStack{
                                        HStack{
                                            Text(index.nome)
                                                .foregroundColor(.white)
                                                .fontWeight(.medium)
                                                .font(.system(size: 15))
                                            
                                            Spacer()
                                            Image(systemName: "ellipsis")
                                                .foregroundStyle(.white)
                                        }
                                        HStack{
                                            Text(index.artista)
                                                .foregroundStyle(.white)
                                                .font(.system(size: 13))
                                            Spacer()
                                        }
                                        
                                    }
                                    Spacer()
                                }
                            }
                            
                        }
                        HStack{
                            Text("Sugeridos")
                                .fontWeight(.medium)
                                .foregroundStyle(.white)
                                .font(.system(size: 37))
                                .ignoresSafeArea()
                                .padding()
                            Spacer()
                        }
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(arraymusic2,id:\.id) { x in
                                    
                                    AsyncImage(url: URL(string: x.Capa)) { image in
                                        image.resizable()
                                            .frame(width: 250,height: 250)
                                            .padding()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                }
                            }
                        }
                    }
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
    

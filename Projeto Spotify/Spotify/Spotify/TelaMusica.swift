//
//  TelaMusica.swift
//  Spotify
//
//  Created by Student07 on 23/11/23.
//

import SwiftUI
import AVKit

struct TelaMusica: View {
    @State var audioPlayer: AVAudioPlayer!
    @State var cap: music
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue, .black],
                           startPoint: .top,
                           endPoint: .center)
            .ignoresSafeArea()
            VStack{
                AsyncImage(url: URL(string: cap.capa)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 250, height: 250)
                Text(cap.nome)
                    .foregroundStyle(.white)
                    .fontWeight(.medium)
                    .font(.system(size: 20))
                Text(cap.artista)
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .font(.system(size: 15))
                HStack{
                    
                    Image(systemName: "shuffle")
                        .foregroundStyle(.white)
                        .padding()
                    Image(systemName: "backward.end.fill")
                        .foregroundStyle(.white)
                        .padding()
                    Button( action: {
                        self.audioPlayer.play()
                    }) {
                    Image(systemName: "play.fill")
                            .foregroundStyle(.white)
                            .padding()
                        .aspectRatio(contentMode: .fit)
                        }
                    Button(action: {
                                            self.audioPlayer.pause()
                                        }) {
                                            Image(systemName: "pause.fill")
                                                .foregroundStyle(.white)
                                                .padding()
                                                .aspectRatio(contentMode: .fit)
                                        }
                    Image(systemName: "forward.end.fill")
                        .foregroundStyle(.white)
                        .padding()
                    Image(systemName: "repeat")
                        .foregroundStyle(.white)
                        .padding()
                }
            }
        }
        .onAppear {
                    let sound = Bundle.main.path(forResource: "amg", ofType: "mp3")
                    self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                }
    }
}


struct TelaMusica_Previews: PreviewProvider {
    static var previews: some View {
        TelaMusica(cap: music(id: 1, nome: "Amiga da Minha Mulher", capa: "https://upload.wikimedia.org/wikipedia/pt/6/6d/Capa_de_M%C3%BAsicas_para_Churrasco%2C_Vol._1.jpg",artista: "Seu Jorge"))
    }
}

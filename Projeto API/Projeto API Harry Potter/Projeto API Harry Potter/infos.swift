//
//  infos.swift
//  Projeto API Harry Potter
//
//  Created by Student07 on 27/11/23.
//

import SwiftUI

struct infos: View {
    @State var cap: personHP
    var body: some View {
        ZStack{
            LinearGradient(colors: [.red, .yellow],
                           startPoint: .top,
                           endPoint: .center)
            .ignoresSafeArea()
            ScrollView{
                VStack{
                    AsyncImage(url: URL(string: cap.image!)) { image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 250, height: 250)
                    VStack(spacing: 10){
                        HStack{
                            Text("Nome:")
                            Text(cap.name!)
                        }
                        
                        HStack{
                            Text("Especie:")
                            Text(cap.species!)
                        }
                        HStack{
                            Text("Genero:")
                            Text(cap.gender!)
                        }
                        HStack{
                            Text("Casa:")
                            Text(cap.house!)
                        }
                            HStack{
                                Text("Ator:")
                                Text(cap.actor!)
                            }
                     
                        }
                    .foregroundStyle(.black)
                    .fontWeight(.medium)
                    .font(.system(size: 30))
                    }
                }
                Spacer()
            }
        }
    }



struct infos_Previews: PreviewProvider {
    static var previews: some View {
        infos(cap: personHP(id: "abc", name: "Harry", alternate_names: ["Potter"], species: "Human", gender: "Male", house: "Grifinoria", dateOfBirth: "23", yearOfBirth: 2010, wizard: true, ancestry: "human", eyeColour: "black", lethairColour: "gray", patronus: "ok", hogwartsStudent: true, hogwartsStaff: false, actor: "joaquin phoenix", alternate_actors: ["lele"], alive: true, image: "https://static.wikia.nocookie.net/harrypotter/images/1/15/Gryffindor_crest_by_readingnerd0415_de0kjre-pre.png/revision/latest?cb=20220722063443&path-prefix=pt-br"))
    }
}

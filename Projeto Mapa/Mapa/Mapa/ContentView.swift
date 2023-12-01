//
//  ContentView.swift
//  Mapa
//
//  Created by Student07 on 24/11/23.
//

import SwiftUI
import MapKit

struct sheetview: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            
        }
        
    }
}


struct Location: Identifiable{
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String
    let description: String
}

struct ContentView: View {
    @State private var showalert = false
    @State private var showingSheet = false
    @State private var x: String = "Brazil"
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -13.543710, longitude: -46.102044), span: MKCoordinateSpan(latitudeDelta: 55, longitudeDelta: 10))
    
    
    var map = [
        
        Location(name: "Brazil", coordinate: CLLocationCoordinate2D(latitude: -13.543710, longitude: -46.102044), flag: "https://static.todamateria.com.br/upload/ba/nd/bandeira-do-brasil-og.jpg", description: "O Brasil é o maior país da América do Sul, com área de mais de 8,5 milhões de km². Tem como capital a cidade de Brasília. Apresenta uma grande variedade climática e paisagística, que pode ser analisada mediante os domínios morfoclimáticos. A população brasileira chegou a 213.317.639 habitantes em 2021, de acordo com o IBGE, com mais de 87% dela vivendo nas cidades. São Paulo, capital do estado de mesmo nome, constitui a maior área urbana do Brasil, com 12 milhões de habitantes. A economia brasileira, embora liderada pelo setor terciário, se destaca também em áreas como a indústria petroquímica e automobilística e na produção agropecuária, que tem a soja como"),
        Location(name: "United States Of America", coordinate: CLLocationCoordinate2D(latitude: 38.624715, longitude: -97.288855), flag: "https://static.mundoeducacao.uol.com.br/mundoeducacao/2022/05/bandeira-estados-unidos.jpg", description: "Estados Unidos ou Estados Unidos da América são uma nação localizada no continente americano, especificamente no subcontinente América do Norte. Considerada a maior potência do mundo e um dos países com maior diversidade étnica e cultural, por conta da forte atratividade de imigrantes. A diversidade estende-se também às características naturais em razão da sua grande extensão territorial, possuindo territórios com características completamente distintas, como o clima, o relevo e a hidrografia. O país exerce influência econômica, política e militar em diversas regiões do mundo. Com exceção da Coreia do Norte, Butão e Irã, todos os demais países mantêm relações diplomáticas com os Estados Unidos."),
        Location(name: "Australia", coordinate: CLLocationCoordinate2D(latitude: -26.576554, longitude: 135.447980), flag: "https://cdn.britannica.com/78/6078-004-77AF7322/Flag-Australia.jpg", description: "Austrália é um país insular situado no continente Oceania, banhado pelos oceanos Índico, a oeste, e Pacífico, a leste. Tem como capital a cidade de Camberra. O território australiano é um dos mais extensos do mundo, com mais de 7,6 mil km², e boa parte de suas terras é formada por planícies e planaltos. No centro da Austrália, está situada uma ampla região desértica, onde o clima árido contrasta com os climas amenos do sul e leste do país. A fauna e a flora australiana são muito ricas e formadas por milhares de espécies endêmicas, como os cangurus e outros animais marsupiais. Vivem na Austrália quase 26 milhões de pessoas, as quais se concentram em algumas cidades litorâneas como, por exemplo, Melbourne. A economia australiana é desenvolvida e diversificada, embora o país seja bastante conhecido pela produção e comércio de carvão mineral e produtos agrícolas.")
        
    ]
    
    var body: some View {
        VStack{
            Text("World Map")
                .font(.title)
                .fontWeight(.medium)
                .font(.system(size: 37))
            Text("\(x)")
                .font(.system(size: 22))
                .fontWeight(.medium)
            
            
            Map(coordinateRegion: $region, annotationItems: map){
                MapMarker(coordinate: $0.coordinate)
            }
                .onTapGesture(coordinateSpace: .local) { location in
                    showingSheet.toggle()
                            }
                .sheet(isPresented: $showingSheet) {
                        sheetview()
                    }
            
               
            
            
            
            Spacer()
            ScrollView(.horizontal){
                HStack (spacing: -5){
                    ForEach(map) { map in
                        Button(map.name){
                            showalert = true
                            region.center = map.coordinate
                            x = map.name
                        }
                        .buttonStyle(.borderedProminent)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
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

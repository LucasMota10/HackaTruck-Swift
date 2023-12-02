//
//  ContentView.swift
//  ExTabView
//
//  Created by Student07 on 21/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            TabView{
                home()
                    .badge(2)
                    .tabItem{
                        Label("home",systemImage:"homekit")
                    }
                photos()
                    .badge(2)
                    .tabItem{
                        Label("photos",systemImage:"photo")
                    }
                profile()
                    .badge(2)
                    .tabItem{
                        Label("profile",systemImage:"person")
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

//
//  home.swift
//  ExTabView
//
//  Created by Student07 on 21/11/23.
//

import SwiftUI

struct home: View {
    
    var body: some View {
        ZStack{
            
        VStack{
            List(0..<50) {
                Text("Lista \($0)")
            }
        }
    }
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}

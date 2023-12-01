//
//  ViewModel.swift
//  Projeto API Harry Potter
//
//  Created by Student07 on 27/11/23.
//

import Foundation


class ViewModel : ObservableObject{
    
    @Published var personagens : [personHP] = []
    
    func fetch(){
        
        guard let url = URL(string: "https://hp-api.onrender.com/api/characters") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with:url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            do{
                let parsed  = try JSONDecoder().decode([personHP].self,from: data)
                
                DispatchQueue.main.async {
                    self?.personagens = parsed
                }
            }catch{
                print(error)
            }
        }
        
        
        task.resume()
        
        
    }
    
}



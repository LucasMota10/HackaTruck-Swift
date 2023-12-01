//
//  Model.swift
//  Projeto API Harry Potter
//
//  Created by Student07 on 27/11/23.
//

import SwiftUI


struct personHP: Codable, Identifiable {
    let id: String
    let name: String?
    let alternate_names : [String]
    let species: String?
    let gender: String?
    let house: String?
    let dateOfBirth: String?
    let yearOfBirth: Int?
    let wizard: Bool?
    let ancestry: String?
    let eyeColour: String?
    let lethairColour: String?
    let patronus: String?
    let hogwartsStudent : Bool?
    let hogwartsStaff: Bool?
    let actor: String?
    let alternate_actors: [String]?
    let alive: Bool?
    let image: String?
}

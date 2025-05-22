//
//  SuperheroResponse.swift
//  Superhero_IOS
//
//  Created by Mañanas on 21/5/25.
//

import Foundation

struct SuperheroResponse : Codable{
    let results: [Superhero]
}

struct Superhero: Codable {
    let id: String
    let name: String
    let image: Image
}

struct Image: Codable {
    let url: String
}

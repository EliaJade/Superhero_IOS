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
    let biography: Biography
    let powerstats: Stats
}

struct Image: Codable {
    let url: String
}

struct Biography: Codable {
    let realName: String
    let placeOfBirth: String
    let publisher: String
    let alignment: String
    
    enum CodingKeys: String, CodingKey {
        case realName = "full-name"
        case placeOfBirth = "place-of-birth"
        case publisher, alignment
    }
}
    
struct Stats: Codable {
    let intelligence: String
    let speed: String
    let strength: String
    let durability: String
    let power: String
    let combat: String
}


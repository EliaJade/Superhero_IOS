//
//  SuperheroProvider.swift
//  Superhero_IOS
//
//  Created by Mañanas on 21/5/25.
//

import Foundation

class SuperheroProvider {
    
    static let API_KEY = "6ac2bcc51f5841c14aa2dbbc44cc5dae"
    
    static func findSuperheroByName (query: String) async -> [Superhero] {
        let url = URL(string: "https://superheroapi.com/api/\(API_KEY)/search/\(query)")
        
        
        guard let url = url else {
            print("Error building URL")
            return []
        }
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            let result = try JSONDecoder().decode(SuperheroResponse.self, from: data)
            
            return result.results
        } catch {
            print(error)
            return []
        }
    }
}




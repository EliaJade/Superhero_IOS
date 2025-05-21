//
//  SuperheroProvider.swift
//  Superhero_IOS
//
//  Created by Mañanas on 21/5/25.
//

import Foundation

class SuperheroProvider {
    
    static let API_KEY = "6ac2bcc51f5841c14aa2dbbc44cc5dae"
    
    static func findSuperheroByName (query: String) async {
        let url = URL(string: "https://superheroapi.com/api/\(API_KEY)/search/\(query)")
        
        
        guard let url = url else {
            print("Error building URL")
            return
        }
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            let result = try JSONDecoder().decode(SuperheroResponse.self, from: data)
            
            return result.results
        } catch {
            print(error)
        }
    }
    
    { data, response, error in
        
                guard let data else {
                    print ("Data is null")
                    return
                }
        
        //Decode data to print the JSON as String
                /*if let str = String(data: data, encoding: .utf8) {
                    print("Successfully decoded: \(str)")
                }*/
                /*guard let response = response as? HTTPURLResponse, 200 ... 299  ~= response.statusCode else {
                    return
                }*/
                
                // JSONDecoder() converts data to model of type Array
                do {
                    
                }
                catch {
                    print(error)
                }
            }
    }




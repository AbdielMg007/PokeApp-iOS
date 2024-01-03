//
//  PokemonModel.swift
//  PokeApp
//
//  Created by Abdiel Mg on 03/01/24.
//

import Foundation

struct PokemonPage: Codable {
    let count: Int
    let next: String
    let results: [Pokemon]
}
 
struct Pokemon: Codable, Identifiable, Equatable {
    //is mutable ignore the warning
    let id = UUID()
    let name: String
    let url: String
    
    static var samplePokemon = Pokemon(name: "bulbasaur",
        url: "https://pokeapi.co/api/v2/pokemon/1/")
}

struct DetailPokemon: Codable {
    let id: Int
    let height: Int
    let weight: Int
}

//
//  ViewModel.swift
//  PokeApp
//
//  Created by Abdiel Mg on 03/01/24.
//

import Foundation
import SwiftUI

final class ViewModel: ObservableObject{
    private let pokemonManager = PokemonManager()
    
    @Published var pokemonList = [Pokemon]()
    @Published var pokemomDetails = DetailPokemon?.self
    @Published var searchText = ""
    
    var filteredPokemon: [Pokemon]{
        return searchText == "" ? pokemonList: pokemonList.filter{
            $0.name.contains(searchText.lowercased())
        }
    }
    
    init(){
        self.pokemonList = pokemonManager.getPokemon()
        print(self.pokemonList)
    }

}

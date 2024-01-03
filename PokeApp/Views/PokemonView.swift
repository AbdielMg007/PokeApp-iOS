//
//  PokemonView.swift
//  PokeApp
//
//  Created by Abdiel Mg on 03/01/24.
//

import SwiftUI

struct PokemonView: View {
    @EnvironmentObject var vm: ViewModel
    let pokemon: Pokemon
    var dimension: Double = 150
    
    var body: some View {
            VStack {
                AsyncImage(url: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(vm.getPokemonIndex(pokemon: pokemon)).png"))
                    .frame(width: dimension, height: dimension)
                    .background(.thinMaterial)
                    .cornerRadius(dimension)
                
                Text(pokemon.name.capitalized)
                    .fontWeight(.bold)
            }
            .padding()
        }
}

struct PokemonView_Previews: PreviewProvider{
    static var previews: some View{
        PokemonView(pokemon: Pokemon.samplePokemon)
            .environmentObject(ViewModel())
    }
}

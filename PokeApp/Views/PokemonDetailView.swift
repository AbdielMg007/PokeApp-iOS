//
//  PokemonDetailView.swift
//  PokeApp
//
//  Created by Abdiel Mg on 03/01/24.
//

import SwiftUI

struct PokemonDetailView: View {
    @EnvironmentObject var vm: ViewModel
    let pokemon: Pokemon

    var body: some View {
        VStack {
            PokemonView(pokemon: pokemon)
                .frame(height: 200)
            
            VStack(spacing: 16) {
                Text("ID: \(vm.pokemonDetails?.id ?? 0)")
                    .font(.headline)
                
                Text("Weight: \(vm.formaHW(value: vm.pokemonDetails?.weight ?? 0))")
                    .font(.headline)
                
                Text("Height: \(vm.formaHW(value: vm.pokemonDetails?.height ?? 0))")
                    .font(.headline)
            }
            .padding()
        }
        .onAppear {
            vm.getDetails(pokemon: pokemon)
        }
    }
}

struct PokemonDetailView_Previews: PreviewProvider{
    static var previews: some View{
        PokemonDetailView(pokemon: Pokemon.samplePokemon)
            .environmentObject(ViewModel())
    }
}

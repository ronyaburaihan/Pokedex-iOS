//
//  PokemonList.swift
//  Pokedex
//
//  Created by Abu Raihan Rony on 23/7/23.
//

import SwiftUI

struct PokemonList: View {
    
    @ObservedObject var viewModel = PokemonViewModel()
    
    private let gridItems = [GridItem(.adaptive(minimum:150))]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItems) {
                    ForEach(viewModel.pokemon){ pokemon in
                        PokemonItem(pokemon: pokemon)
                    }
                }
            }
            .navigationTitle("Pokedex")
        }
    }
}

struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonList()
    }
}

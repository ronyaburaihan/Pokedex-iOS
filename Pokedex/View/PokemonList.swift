//
//  PokemonList.swift
//  Pokedex
//
//  Created by Abu Raihan Rony on 23/7/23.
//

import SwiftUI

struct PokemonList: View {
    
    private let gridItems = [GridItem(.adaptive(minimum:150))]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItems) {
                    ForEach(0..<150){ _ in
                        PokemonItem()
                    }
                }
            }
        }
    }
}

struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonList()
    }
}

//
//  ContentView.swift
//  Pokedex
//
//  Created by Abu Raihan Rony on 14/7/23.
//

import SwiftUI

struct ContentView: View {
    
    private let gridItems = [GridItem(.adaptive(minimum:150))]
    
    var body: some View {
        PokemonList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  Pokedex
//
//  Created by Abu Raihan Rony on 14/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            PokemonList()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

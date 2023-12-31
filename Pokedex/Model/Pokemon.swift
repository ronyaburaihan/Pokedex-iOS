//
//  Pokemon.swift
//  Pokedex
//
//  Created by Abu Raihan Rony on 25/7/23.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
}

let MOCK_POKEMON : [Pokemon] = [
    .init(id: 0, name: "Bulbasaur", imageUrl: "1", type: "poison"),
    .init(id: 1, name: "Ivysaur", imageUrl: "1", type: "poison"),
    .init(id: 2, name: "Venusaur", imageUrl: "1", type: "fire"),
    .init(id: 3, name: "Charmander", imageUrl: "1", type: "fire"),
    .init(id: 4, name: "Charmeleon", imageUrl: "1", type: "poison"),
    .init(id: 5, name: "Charizard", imageUrl: "1", type: "fire"),
    .init(id: 6, name: "Squirtle", imageUrl: "1", type: "poison"),
    .init(id: 7, name: "Wartortle", imageUrl: "1", type: "fire"),
    .init(id: 8, name: "Blastoise", imageUrl: "1", type: "poison")
]

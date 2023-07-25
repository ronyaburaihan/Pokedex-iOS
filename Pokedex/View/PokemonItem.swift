//
//  PokemonItem.swift
//  Pokedex
//
//  Created by Abu Raihan Rony on 14/7/23.
//

import SwiftUI
import Kingfisher

struct PokemonItem: View {
    
    var pokemon: Pokemon
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text(pokemon.name.capitalized)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top,8)
                    .padding(.leading)
                
                HStack {
                    Text(pokemon.type.capitalized)
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .padding(.horizontal,16)
                        .padding(.vertical,8)
                        .overlay(RoundedRectangle(cornerRadius: 20).fill(Color.white).opacity(0.25))
                        .frame(width: 100, height: 24)
                    
                    KFImage(URL(string: pokemon.imageUrl))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68,height: 68)
                        .padding([.bottom, .trailing], 4 )
                }
            }
        }
        .background(Color(backgroundColor(forType: pokemon.type)))
        .cornerRadius(12)
        .shadow(color: Color(backgroundColor(forType: pokemon.type)), radius: 6)
    }
}

func backgroundColor(forType type: String) -> UIColor {
    switch type {
    case "fire": return .systemRed
    case "poison": return .systemGreen
    case "water": return .systemTeal
    case "electric": return .systemYellow
    case "psychic": return .systemPurple
    case "normal": return .systemOrange
    case "ground": return .systemGray
    case "flying": return .systemBlue
    case "fairy": return .systemPink
    default: return .systemIndigo
    }
}

struct PokemonItem_Previews: PreviewProvider {
    static var previews: some View {
        PokemonItem(pokemon: MOCK_POKEMON[2])
    }
}

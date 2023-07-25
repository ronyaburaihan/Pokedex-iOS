//
//  PokemonItem.swift
//  Pokedex
//
//  Created by Abu Raihan Rony on 14/7/23.
//

import SwiftUI

struct PokemonItem: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                 Text("Hello World")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top,8)
                    .padding(.leading)
                
                HStack {
                    Text("Poison")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .padding(.horizontal,16)
                        .padding(.vertical,8)
                        .overlay(RoundedRectangle(cornerRadius: 20).fill(Color.white).opacity(0.25))
                        .frame(width: 100, height: 24)
                    
                    Image("pokemon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68,height: 68)
                        .padding([.bottom, .trailing], 4 )
                }
            }
        }
        .background(Color.green)
        .cornerRadius(12)
        .shadow(color: .green, radius: 6)
    }
}

struct PokemonItem_Previews: PreviewProvider {
    static var previews: some View {
        PokemonItem()
    }
}

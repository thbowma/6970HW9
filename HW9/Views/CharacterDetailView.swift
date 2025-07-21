//
//  CharacterDetailView.swift
//  HW9
//
//  Created by Thomas Bowman on 7/20/25.
//

import SwiftUI

struct CharacterDetailView: View {
    var character : RickAndMortyModel

    var body: some View {
        VStack(spacing: 20) {
            Text(character.name)
                .font(.largeTitle)
            Text(character.status)
                .font(.title)
            Text(character.species)
                .font(.headline)
            Text(character.gender)
        }
        
    }
}

//#Preview {
//    CharacterDetailView(character: RickAndMortyModel(id: "rick", name:"Rick Sanchez", status: "alive", species: "human", gender: "Male"))
//}

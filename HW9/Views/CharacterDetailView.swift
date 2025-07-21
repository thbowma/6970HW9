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
            AsyncImage(url: URL(string: character.image))
                .frame(maxWidth: .infinity)
                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 20))
            Text(character.name)
                .font(.largeTitle)
            Text(character.status.uppercased())
                .font(.title)
            Text(character.species.uppercased())
                .font(.title)
            Text(character.gender.uppercased())
                .font(.title)
        }
        .ignoresSafeArea(.all)
        .padding()
    }
}

#Preview {
    CharacterDetailView(character: RickAndMortyModel(id: 1, name:"Rick Sanchez", status: "alive", species: "human", gender: "Male", image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg"))
}

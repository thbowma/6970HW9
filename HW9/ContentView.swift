//
//  ContentView.swift
//  HW9
//
//  Created by Thomas Bowman on 7/20/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var characters = CharacterViewModel()

    var body: some View {
                    NavigationStack {
                        List(characters.characters) { character in
                            
                    NavigationLink(destination: CharacterDetailView(character: character)){
                        
                        Text(character.name)
                    }
                }
                .navigationTitle("Characters")
      
            }
                    .task {
                        await characters.fetchCharacters()
                    }
    }
}

#Preview {
    ContentView()
}

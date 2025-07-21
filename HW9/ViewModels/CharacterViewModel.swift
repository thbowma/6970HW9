//
//  CharacterViewModel.swift
//  HW9
//
//  Created by Thomas Bowman on 7/20/25.
//

import Foundation

import Foundation

import Foundation

class CharacterViewModel: ObservableObject {
    @Published var characters: [RickAndMortyModel] = []
    @Published var hasError = false
    @Published var characterError: CharacterAPIError?

    @MainActor
    func fetchCharacters() async {
        self.characters.removeAll()

        let urlString = "https://rickandmortyapi.com/api/character"
        guard let url = URL(string: urlString) else { return }

        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let response = try JSONDecoder().decode(CharacterResponse.self, from: data)

            self.characters = response.results

        } catch {
            self.hasError = true
            self.characterError = .customError(error: error)
        }
    }

    struct CharacterResponse: Codable {
        let results: [RickAndMortyModel]
    }

    enum CharacterAPIError: LocalizedError {
        case decodingError
        case customError(error: Error)

        var errorDescription: String? {
            switch self {
            case .decodingError:
                return "Error decoding character data"
            case .customError(let error):
                return error.localizedDescription
            }
        }
    }
}


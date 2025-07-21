//
//  RickAndMortyModel.swift
//  HW9
//
//  Created by Thomas Bowman on 7/20/25.
//

import Foundation

struct RickAndMortyModel : Codable, Identifiable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let gender: String
    let image: String
}

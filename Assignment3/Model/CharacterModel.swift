//
//  CharacterModel.swift
//  Assignment3
//
//  Created by Kyle Zimmerman on 3/30/24.
//

import Foundation

struct CharacterResults {
    let info: InfoData
    let results: [Character]
}

struct InfoData : Codable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}

struct Character : Codable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin: OriginData
    let image: String
}

struct OriginData : Codable {
    let name: String
    let url: String
}

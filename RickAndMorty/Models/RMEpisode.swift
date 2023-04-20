//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Arken Sarsenov on 18.04.2023.
//

import Foundation

struct RMEpisode: Codable {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
}

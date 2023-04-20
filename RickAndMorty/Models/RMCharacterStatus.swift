//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Arken Sarsenov on 19.04.2023.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}

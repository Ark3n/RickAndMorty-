//
//  RMService.swift
//  RickAndMorty
//
//  Created by Arken Sarsenov on 18.04.2023.
//

import Foundation

/// Primary API service object to get Rick And Morty data
final class RMService{
    /// Shared singlton istance
    static let shared = RMService()
    private init() {}
    
    /// Send Rick and Morty API call
    /// - Parameters:
    ///   - request: request instence
    ///   - expecting: The type of object we expect to get back
    ///   - completion: callback with data or error
    public func execure<T: Codable> (
        _ request: RMRequest,
        expecting: T.Type,
        completion: @escaping(Result<T, Error>) -> Void
    ) {
    }
}

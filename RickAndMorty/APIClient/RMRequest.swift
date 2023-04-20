//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Arken Sarsenov on 18.04.2023.
//

import Foundation

/// Object that represents a single API call
final class RMRequest {
    //base url
    //endpoint
    //path components
    //query parameters
    
    /// API constants
    private struct Constants{
        static let baseUrl = "https://rickandmortyapi.com/api/"
    }
    /// Desierd endpoint
    private let endpoint: RMEndpoint
    /// Path component for API, if any
    private let pathComponents: Set<String>
    /// Query parameters for API, if any
    private let queryParameters: [URLQueryItem]
    
    /// Constracted url for api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        return string
    }
    
    /// Computed & constracted URL request
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Desired HTTP method
    public let httpMethod = "GET"
    
    /// Constract request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: collection of Path components
    ///   - queryParameters: collection of query parameters
    public init
    (endpoint: RMEndpoint,
                pathComponents: Set<String> = [],
                queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}

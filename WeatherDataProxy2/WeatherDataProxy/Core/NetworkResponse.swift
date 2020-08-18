//
//  NetworkResponse.swift
//  WeatherDataProxy
//
//  Created by Salwa Gaida on 14/08/2020.
//  Copyright © 2020 Salwa Gaida. All rights reserved.
//

import Foundation

public struct NetworkResponse<Value> {
    /// The URL request sent to the server.
    public let request: URLRequest?
    
    /// The server's response to the URL request.
    public let response: HTTPURLResponse?
    
    /// The data returned by the server.
    public let data: Data?
    
    /// The result of response serialization.
    public let networkResult: NetworkResult<Value>
    
    /// Returns the associated value of the result if it is a success, `nil` otherwise.
    public var value: Value? { return networkResult.value }
    
    /// Returns the associated error value if the result if it is a failure, `nil` otherwise.
    public var error: Error? { return networkResult.error }
    
    /// Creates a `DataResponse` instance with the specified parameters derived from response serialization.
    ///
    /// - parameter request:  The URL request sent to the server.
    /// - parameter response: The server's response to the URL request.
    /// - parameter data:     The data returned by the server.
    /// - parameter result:   The result of response serialization.
    ///
    /// - returns: The new `NetworkResponse` instance.
    public init(
        request: URLRequest?,
        response: HTTPURLResponse?,
        data: Data?,
        result: NetworkResult<Value>)
    {
        self.request = request
        self.response = response
        self.data = data
        self.networkResult = result
    }
}

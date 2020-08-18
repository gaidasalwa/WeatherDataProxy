//
//  WeatherAPIDataProxy.swift
//  WeatherDataProxy
//
//  Created by Salwa Gaida on 10/08/2020.
//  Copyright © 2020 Salwa Gaida. All rights reserved.
//

import UIKit
import Alamofire

/// WeatherDataProxy
open class WeatherAPIDataProxy {
  
  // MARK: parameters
  var configuration: ConfigurationProtocol
  
  public init(configuration: ConfigurationProtocol) {
    self.configuration = configuration
  }
  
  // MARK: - public API
  
  public func retrieveDataAsynchronously(completion: @escaping (Weather?) -> Void) {
    let params = try? parametersForGetRequest()
    guard let urlString = try? urlForRequest(),
      let url = URL(string: urlString) else {
      return
    }
    
    AF.request(url, method: .get, parameters: params, encoding: URLEncoding.default, headers: nil)
    .validate()
    .responseJSON { response in
      switch response.result {
          case let .success(value):
            print("value ", value)
            guard let data = response.data else {
              completion(nil)
              return
            }
            let weather = try? self.transformDataToObject(data: data)
            completion(weather)
          case let .failure(error):
            print("Error while fetching weather ", error)
            completion(nil)
      }
    }
  }

  
  /**
   Create URL Request
   
   - Precondition: Configuration object must have `host`, `path` and `postfix`.
   */
  open func urlForRequest() throws -> String {
    return configuration.host + configuration.path
  }
  
  /// Create the query Params
  open func parametersForGetRequest() throws -> [String: String]? {
    return ["appid": configuration.apiKey,
            "q": configuration.city]
  }
  
  open func parametersForHeaderRequest() throws -> [String: String]? {
    return nil
  }
  
  open func parametersForBodyRequest() throws -> [String: Any]? {
    return nil
  }
  
  // MARK: - Parsing
  
  /// Decode Data Model
  public func transformDataToObject(data: Data) throws -> Weather? {
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy = .convertFromSnakeCase
    let weather = try? decoder.decode(Weather.self, from: data)
    return weather
  }
}


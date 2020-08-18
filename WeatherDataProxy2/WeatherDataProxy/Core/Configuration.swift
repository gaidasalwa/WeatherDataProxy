//
//  Configuration.swift
//  WeatherDataProxy
//
//  Created by Salwa Gaida on 16/08/2020.
//  Copyright © 2020 Salwa Gaida. All rights reserved.
//

import Foundation

public class Configuration: ConfigurationProtocol {
  public var host: String
  public var path: String
  public var apiKey: String
  public var city: String

  public init(host: String,
              path: String,
              apiKey: String,
              city: String) {
    self.host = host
    self.path = path
    self.apiKey = apiKey
    self.city = city
  }
}

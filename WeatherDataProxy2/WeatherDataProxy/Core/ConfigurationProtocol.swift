//
//  ConfigurationProtocol.swift
//  WeatherDataProxy
//
//  Created by Salwa Gaida on 10/08/2020.
//  Copyright © 2020 Salwa Gaida. All rights reserved.
//

import Foundation

public protocol ConfigurationProtocol {
  var host: String { get }
  var path: String { get }
  var apiKey: String { get }
  var city: String { get }
}

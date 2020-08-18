//
//  Model.swift
//  WeatherDataProxy
//
//  Created by Salwa Gaida on 11/08/2020.
//  Copyright © 2020 Salwa Gaida. All rights reserved.
//

import Foundation

/// Object Model
public protocol Model: Codable {}

/// Cache Model
public protocol CacheModelProtocol: Codable {

  /// Used to store las cache write operation.
  var modelDate: Date? { get }

  /// Cache URL
  var url: String? { get }

  var object: Data? { get }
}

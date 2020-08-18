//
//  NetworkResult.swift
//  WeatherDataProxy
//
//  Created by Salwa Gaida on 14/08/2020.
//  Copyright © 2020 Salwa Gaida. All rights reserved.
//

import Foundation

public enum NetworkResult<Value> {
  case success(Value)
  case failure(Error)

  public var value: Value? {
    switch self {
    case let .success(value):
      return value
    case .failure:
      return nil
    }
  }

  public var error: Error? {
    switch self {
    case .success:
      return nil
    case let .failure(error):
      return error
    }
  }

  public init(value: () throws -> Value) {
    do {
      self = try .success(value())
    } catch {
      self = .failure(error)
    }
  }
}

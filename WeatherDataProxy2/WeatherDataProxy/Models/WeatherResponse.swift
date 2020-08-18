//
//  WeatherResponse.swift
//  WeatherDataProxy
//
//  Created by Salwa Gaida on 16/08/2020.
//  Copyright © 2020 Salwa Gaida. All rights reserved.
//

/// WeatherResponse Model
public class WeatherResponse {
  /// Weather
  public var weather: Weather?

  private enum CodingKeys: String, CodingKey {
    case weather
  }
}

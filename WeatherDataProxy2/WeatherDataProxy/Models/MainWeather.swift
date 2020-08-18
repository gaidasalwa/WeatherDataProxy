//
//  MainWeather.swift
//  WeatherDataProxy
//
//  Created by Salwa Gaida on 16/08/2020.
//  Copyright © 2020 Salwa Gaida. All rights reserved.
//

import UIKit

public class MainWeather: Codable {
  public var temperature: Double?
  public var feelsLike: Double?
  public var temperatureMin: Double?
  public var temperatureMax: Double?
  public var pressure: Double?
  public var humidity: Double?

  private enum CodingKeys: String, CodingKey {
    case temperature = "temp"
    case feelsLike = "feels_like"
    case temperatureMin = "temp_min"
    case temperatureMax = "temp_max"
    case pressure
    case humidity
  }
}

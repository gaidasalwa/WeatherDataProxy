//
//  Weather.swift
//  WeatherDataProxy
//
//  Created by Salwa Gaida on 16/08/2020.
//  Copyright © 2020 Salwa Gaida. All rights reserved.
//

import UIKit

public class Weather: Codable {
  public var coordonates: Coordonates?
  public var weather: [WeatherDetails]?
  public var base: String?
  public var main: MainWeather?
  public var wind: Wind?
  public var clouds: Clouds?
  public var date: Int?
  public var sys: Sys?
  public var timezone: Int?
  public var visibility: Int?
  public var identifier: Int?
  public var name: String?
  public var code: Int?
  

  private enum CodingKeys: String, CodingKey {
    case coordonates = "coord"
    case weather
    case base
    case main
    case wind
    case clouds
    case date = "dt"
    case sys
    case timezone
    case visibility
    case identifier = "id"
    case name
    case code = "cod"
  }
}

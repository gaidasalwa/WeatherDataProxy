//
//  Sys.swift
//  WeatherDataProxy
//
//  Created by Salwa Gaida on 16/08/2020.
//  Copyright © 2020 Salwa Gaida. All rights reserved.
//

import UIKit

public class Sys: Codable {
  public var type: Int?
  public var identifier: Int?
  public var message: Double?
  public var country: String?
  public var sunrise: Int?
  public var sunset: Int?

  private enum CodingKeys: String, CodingKey {
    case type
    case identifier = "id"
    case message
    case country
    case sunrise
    case sunset
  }
}

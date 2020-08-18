//
//  Wind.swift
//  WeatherDataProxy
//
//  Created by Salwa Gaida on 16/08/2020.
//  Copyright © 2020 Salwa Gaida. All rights reserved.
//

import UIKit

public class Wind: Codable {
  public var speed: Double?
  public var degree: Double?

  private enum CodingKeys: String, CodingKey {
    case speed
    case degree = "deg"
  }
}

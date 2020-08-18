//
//  WeatherDetails.swift
//  WeatherDataProxy
//
//  Created by Salwa Gaida on 16/08/2020.
//  Copyright © 2020 Salwa Gaida. All rights reserved.
//

import UIKit

public class WeatherDetails: Codable {
  public var identifier: Int?
  public var main: String?
  public var description: String?
  public var icon: String?

  private enum CodingKeys: String, CodingKey {
    case identifier = "id"
    case main
    case description
    case icon
  }
}

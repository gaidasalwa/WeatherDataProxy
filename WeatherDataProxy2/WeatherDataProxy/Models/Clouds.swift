//
//  Clouds.swift
//  WeatherDataProxy
//
//  Created by Salwa Gaida on 17/08/2020.
//  Copyright © 2020 Salwa Gaida. All rights reserved.
//

import UIKit

public class Clouds: Codable {
  public var all: Int?

  private enum CodingKeys: String, CodingKey {
    case all
  }
}

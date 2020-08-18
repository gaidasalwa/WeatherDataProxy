//
//  Coordonates.swift
//  WeatherDataProxy
//
//  Created by Salwa Gaida on 16/08/2020.
//  Copyright © 2020 Salwa Gaida. All rights reserved.
//

import UIKit

public class Coordonates: Codable {
  public var latitude: Double?
  public var longitude: Double?
  
  private enum CodingKeys: String, CodingKey {
    case latitude = "lat"
    case longitude = "lon"
  }
}

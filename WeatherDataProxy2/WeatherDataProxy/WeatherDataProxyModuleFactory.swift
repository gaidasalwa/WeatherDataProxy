//
//  WeatherDataProxyModuleFactory.swift
//  WeatherDataProxy
//
//  Created by Salwa Gaida on 10/08/2020.
//  Copyright © 2020 Salwa Gaida. All rights reserved.
//

import Foundation

public protocol WeatherDataProxyModuleFactoryProtocol: class {
  func makeConnector(configuration: ConfigurationProtocol) -> WeatherAPIDataProxy
}

public class WeatherDataProxyModuleFactory {

  public static let shared = WeatherDataProxyModuleFactory()
  private var dataProxy: WeatherAPIDataProxy?

  // MARK: - Lifecycle

  public init() {}
}

// MARK: - WeatherDataProxyModuleFactoryProtocol

extension WeatherDataProxyModuleFactory: WeatherDataProxyModuleFactoryProtocol {

  public func makeConnector(configuration: ConfigurationProtocol) -> WeatherAPIDataProxy {
    guard let dataProxy = self.dataProxy else {
      let currentDataProxy = WeatherAPIDataProxy(configuration: configuration)
      self.dataProxy = currentDataProxy
      return currentDataProxy
    }
    self.dataProxy?.configuration = configuration
    return dataProxy
  }
}

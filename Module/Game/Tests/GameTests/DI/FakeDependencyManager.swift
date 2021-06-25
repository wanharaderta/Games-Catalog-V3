//
//  File.swift
//  
//
//  Created by Wanhar on 15/06/21.
//

import Foundation
import Resolver


extension Resolver: ResolverRegistering {
  public static func registerAllServices() {
    registerAllFakeGamesRemoteDataSourceServices()
    registerAllFakeGamesRepositoryServices()
    registerAllFakeInteractorServices()
    registerAllMapperServices()
    registerAllPresenterServices()
  }
}

//
//  DependencyManager.swift
//  GamesCatalog
//
//  Created by Wanhar on 15/06/21.
//

import Foundation
import Resolver
import Core


extension Resolver: ResolverRegistering {
  public static func registerAllServices() {
    registerAllRepositoryServices()
    registerAllRemoteDataSourceServices()
    registerAllMapperServices()
    registerAllPresenterServices()
    registerAllInteractorServices()
  }
}

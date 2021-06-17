//
//  File.swift
//  
//
//  Created by Wanhar on 24/02/21.
//

import Foundation

public protocol Mapper {
  associatedtype Response
//  associatedtype Entity
  associatedtype Domain
//  associatedtype Presentation
  
  func transformResponseToDomain(response: Response) -> Domain
//  func transformEntityToDomain(entity: Entity) -> Domain
//  func transformDomainToEntity(domain: Domain) -> Entity
//  func transformDomainToPresentation(domain: Domain) -> Presentation
//  func transformPresentationToDomain(presentation: Presentation) -> Domain
}

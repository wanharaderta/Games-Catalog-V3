//
//  File.swift
//  
//
//  Created by Wanhar on 19/06/21.
//

import Foundation
import SwiftUI

extension LinearGradient {
  public static let blackOacityGradient = LinearGradient(
    gradient: Gradient(
      colors: [Color.black.opacity(0.0),
               Color.black.opacity(0.95)]),
    startPoint: .top,
    endPoint: .bottom)
}

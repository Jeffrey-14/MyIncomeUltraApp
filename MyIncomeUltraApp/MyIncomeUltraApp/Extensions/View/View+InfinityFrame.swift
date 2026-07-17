//
//  View+InfinityFrame.swift
//  MyIncomeUltraApp
//
//  Created by Nana Yaw on 7/17/26.
//

import SwiftUI

extension View {
  func infinityFrame () -> some View {
    self
      .frame (maxWidth: .infinity,maxHeight: .infinity)
  }
}

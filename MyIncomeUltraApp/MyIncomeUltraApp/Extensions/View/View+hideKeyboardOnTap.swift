//
//  View+hideKeyboardOn.swift
//  MyIncomeUltraApp
//
//  Created by Nana Yaw on 7/20/26.
//

import SwiftUI

extension View {
  func hideKeyboardOnTap() -> some View {
    self.onTapGesture {
      hideKeyboard()
    }
  }
}

//
//  View+hideKeyboard.swift
//  MyIncomeUltraApp
//
//  Created by Nana Yaw on 7/20/26.
//

import SwiftUI

extension View {
func hideKeyboard() {
  UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
  }
}

//
//  View+inputTextField.swift
//  MyIncomeUltraApp
//
//  Created by Nana Yaw on 7/18/26.
//

import SwiftUI

extension View {
  func inputTextField() -> some View {
    self
      .keyboardType(.decimalPad)
      .padding(12)
      .frame(maxWidth: .infinity)
      .background(Color.appTheme.cellBackground)
      .cornerRadius(.textfield)
      .shadow(.regular)
  }
}

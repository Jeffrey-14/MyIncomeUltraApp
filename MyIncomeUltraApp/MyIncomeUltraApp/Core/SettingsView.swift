//
//  SettingsView.swift
//  MyIncomeUltraApp
//
//  Created by Nana Yaw on 7/17/26.
//

import SwiftUI

struct SettingsView: View {
  @StateObject private var viewModel = SettingsViewModel()
  @AppStorage(UserDefaultKeys.isDarkMode) private var isDarkMode = true
  
  var body: some View {
    ScrollView {
      VStack(spacing: 16) {
        introBoxView
        customizationBoxView
        applicationBoxView
        agreementsBoxView
      }
      .padding()
    }
    .infinityFrame()
    .background(Color.appTheme.viewBackground)
  }
}

private extension SettingsView {
  var introBoxView: some View {
    IntroBoxView(
      data: .init(
        title: viewModel.getAppName(),
        sfSymbol: "info.circle",
        imageName: "AppIconImage",
        description: viewModel.getAppDescription()
      )
    )
  }
  
  var customizationBoxView: some View {
    BoxView(data: .init(
        title: "Customization",
        sfSymbol: "paintbrush")
    ) {
      Toggle("Dark Mode", isOn: $isDarkMode)
      .tint(.appTheme.accent)
    }
  }
  
  var applicationBoxView: some View {
    InfoBoxView(with: viewModel.applicationData)
  }
  
  var agreementsBoxView: some View {
    InfoBoxView(with: viewModel.agreementsData)
  }
}

#Preview {
  SettingsView()
}

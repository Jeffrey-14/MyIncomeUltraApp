//
//  ContentView.swift
//  MyIncomeUltraApp
//
//  Created by Nana Yaw on 7/16/26.
//

import SwiftUI

struct AppStartingView: View {
  @StateObject var viewModel = AppStartingViewModel()
  
  var body: some View {
    Group {
      if viewModel.shouldShowWelcomeView {
        WelcomeView(shouldShowWelcomeView: $viewModel.shouldShowWelcomeView)
      } else {
        HomeTabView()
      }
    }
    .animation(.easeIn, value: viewModel.shouldShowWelcomeView)
  }
}

#Preview {
  AppStartingView()
}

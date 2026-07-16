//
//  WelcomeView.swift
//  MyIncomeUltraApp
//
//  Created by Nana Yaw on 7/16/26.
//

import SwiftUI

struct WelcomeView: View {
  @StateObject private var viewModel = WelcomeViewModel()
  @Binding var shouldShowWelcomeView: Bool
  
  var body: some View {
    VStack {
      title
      Spacer()
      VStack(spacing: 0) {
        welcomeImage
        welcomeText
      }
      Spacer()
      getStartedButton
    }
  }
}

private extension WelcomeView {
  var title: some View {
    Text(viewModel.getAppName())
      .font(.title)
      .fontWeight(.bold)
  }
  
  var welcomeImage: some View {
    Image(.welcome)
      .resizable()
      .scaledToFit()
      .frame(maxWidth: .infinity)
  }

  
  var welcomeText: some View {
    Text("Effortlessly calculate your income.\nLet's get started!")
      .font(.title3)
      .fontWeight(.medium)
      .multilineTextAlignment(.center)
      .foregroundStyle(Color.gray)
  }
  
  var getStartedButton: some View {
    Button {
      shouldShowWelcomeView = false
    } label: {
      Text("Get Started")
    }
  }
}


#Preview {
  WelcomeView(shouldShowWelcomeView: .constant(true))
}

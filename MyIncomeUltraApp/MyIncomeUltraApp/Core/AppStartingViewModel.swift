//
//  AppStartingViewModel.swift
//  MyIncomeUltraApp
//
//  Created by Nana Yaw on 7/16/26.
//

import Foundation
import Combine

@MainActor
final class AppStartingViewModel: ObservableObject {
  @Published var shouldShowWelcomeView: Bool = true
  
}

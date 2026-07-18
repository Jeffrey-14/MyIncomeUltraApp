//
//  WelcomeViewModel.swift
//  MyIncomeUltraApp
//
//  Created by Nana Yaw on 7/16/26.
//

import Foundation
import Combine
import FactoryKit

@MainActor
final class WelcomeViewModel: ObservableObject {
  @Injected(\.appinfoStore) var appInfoStore
 
  func getAppName() -> String {
    appInfoStore.name
  }
}

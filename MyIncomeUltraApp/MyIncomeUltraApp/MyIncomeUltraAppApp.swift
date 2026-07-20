//
//  MyIncomeUltraAppApp.swift
//  MyIncomeUltraApp
//
//  Created by Nana Yaw on 7/16/26.
//

import SwiftUI

@main
struct MyIncomeUltraAppApp: App {
  @AppStorage(UserDefaultKeys.isDarkMode) private var isDarkMode: Bool = true
  
    var body: some Scene {
        WindowGroup {
          AppStartingView()
            .preferredColorScheme(isDarkMode ? .dark : . light)
        }
    }
}

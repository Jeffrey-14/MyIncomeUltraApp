//
//  HomeTabView.swift
//  MyIncomeUltraApp
//
//  Created by Nana Yaw on 7/16/26.
//

import SwiftUI

struct HomeTabView: View {
  var body: some View {
    TabView {
      incomeTabItemView
      settingsTabItemView
    }
  }
}

private extension HomeTabView {
  var incomeTabItemView: some View {
    NavigationStack {
      IncomeView()
    }
    .tabItem {
      Image(systemName: "dollarsign.square.fill")
      Text("Income")
    }
  }
  
  var settingsTabItemView: some View {
    SettingsView()
      .tabItem {
        Image(systemName: "gearshape")
        Text("Settings")
      }
  }
}

#Preview {
  HomeTabView()
}

//
//  IncomeViewModel.swift
//  MyIncomeUltraApp
//
//  Created by Nana Yaw on 7/18/26.
//
import Foundation
import Combine
import FactoryKit

@MainActor
final class IncomeViewModel: ObservableObject {
  @Published var incomePickerValue: IncomePickerView.IncomeType = .salary
  @Injected(\.incomeStore) var incomeStore
  @Injected(\.appinfoStore) var appInfoStore
  
  var appName: String {
    appInfoStore.name
  }
}


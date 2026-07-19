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
  @Published var salaryInput: SalaryInput = .init()
  @Published var salaryOutput: SalaryOutput = .init()
  @Published var hourlyInput: HourlyInput = .init()
  @Published var hourlyOutput: HourlyOutput = .init()
  @Injected(\.incomeStore) var incomeStore
  @Injected(\.appinfoStore) var appInfoStore
  
  var shouldShowOvertimeCheck: Bool {
    (hourlyInput.hoursPerWeek ?? 0) > hourlyInput.hoursPerWeekLimitForOvertime
  }
  
  var appName: String {
    appInfoStore.name
  }
}


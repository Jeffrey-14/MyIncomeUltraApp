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
  private var cancellables = Set<AnyCancellable>()
  
  init() {
    setSubscribers()
    
  }
  
  private func setSubscribers() {
    $salaryInput
      .receive(on: DispatchQueue.main)
      .sink { [weak self] salaryInput in
        guard let self else { return }
        salaryOutput = incomeStore.getSalaryOutput(for: salaryInput)
      }
      .store(in: &cancellables)
    
    $hourlyInput
      .receive(on: DispatchQueue.main)
      .sink { [weak self] hourlyInput in
        guard let self else { return }
        hourlyOutput = incomeStore.getHourlyOutput(for: hourlyInput)
      }
      .store(in: &cancellables)
    
  }
  
  var shouldShowOvertimeCheck: Bool {
    (hourlyInput.hoursPerWeek ?? 0) > hourlyInput.hoursPerWeekLimitForOvertime
  }
  
  var appName: String {
    appInfoStore.name
  }
}


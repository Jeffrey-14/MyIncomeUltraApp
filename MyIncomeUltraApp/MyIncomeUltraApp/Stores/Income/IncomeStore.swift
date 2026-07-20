//
//  IncomeStore.swift
//  MyIncomeUltraApp
//
//  Created by Nana Yaw on 7/17/26.
//

import Foundation

protocol IncomeStore {
  func getSalaryOutput(for salaryInput: SalaryInput) -> SalaryOutput
  func getHourlyOutput(for HourlyInput: HourlyInput) -> HourlyOutput
}

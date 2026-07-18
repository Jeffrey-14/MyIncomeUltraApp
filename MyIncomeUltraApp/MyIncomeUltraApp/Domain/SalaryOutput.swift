//
//  SalaryOutput.swift
//  MyIncomeUltraApp
//
//  Created by Nana Yaw on 7/18/26.
//

import Foundation

struct SalaryOutput {
  let hourlyWage: Double
  let takeHomePay: Pay
  let grossPay: Pay
  
  init(hourlyWage: Double, takeHomePay: Pay = .init(incomeType: .takeHome), grossPay: Pay = .init(incomeType: .gross)) {
    self.hourlyWage = hourlyWage
    self.takeHomePay = takeHomePay
    self.grossPay = grossPay
  }
}


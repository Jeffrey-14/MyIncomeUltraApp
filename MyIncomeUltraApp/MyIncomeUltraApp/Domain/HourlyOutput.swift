//
//  HourlyOutput.swift
//  MyIncomeUltraApp
//
//  Created by Nana Yaw on 7/18/26.
//

import Foundation

struct HourlyOutput {
  let takeHomePay: Pay
  let grossPay: Pay
  
  init(takeHomePay: Pay = .init(incomeType: .takeHome), grossPay: Pay = .init(incomeType: .gross)) {
    self.takeHomePay = takeHomePay
    self.grossPay = grossPay
  }
}

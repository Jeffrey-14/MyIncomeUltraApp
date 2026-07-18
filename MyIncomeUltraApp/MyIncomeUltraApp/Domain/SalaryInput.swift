//
//  SalaryInput.swift
//  MyIncomeUltraApp
//
//  Created by Nana Yaw on 7/17/26.
//

import Foundation

struct SalaryInput {
  var yearlyGross: Double?
  var takeHomePercentage: Double?
  
  init(yearlyGross: Double? = nil, takeHomePercentage: Double? = nil) {
    self.yearlyGross = yearlyGross
    self.takeHomePercentage = takeHomePercentage
  }
}

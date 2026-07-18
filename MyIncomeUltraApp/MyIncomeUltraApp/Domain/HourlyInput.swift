//
//  HourlyInput.swift
//  MyIncomeUltraApp
//
//  Created by Nana Yaw on 7/17/26.
//

import Foundation

struct HourlyINput {
  var hourlyWage: Double?
  var hoursPerWeek: Double?
  var takeHomePercentage: Double?
  var overtime: Bool?
  
  init(hourlyWage: Double? = nil, hoursPerWeek: Double? = nil, takeHomePercentage: Double? = nil, overtime: Bool? = true) {
    self.hourlyWage = hourlyWage
    self.hoursPerWeek = hoursPerWeek
    self.takeHomePercentage = takeHomePercentage
    self.overtime = overtime
  }
  
  let hoursPerWeekLimitforOvertime: Double = 40
}


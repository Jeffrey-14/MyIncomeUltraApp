//
//  Container+Registration.swift
//  MyIncomeUltraApp
//
//  Created by Nana Yaw on 7/17/26.
//

import FactoryKit

extension Container {
  var appInfoStore: Factory<AppInfoLiveStore> {
    self { MainActor.assumeIsolated { AppInfoLiveStore() } }.singleton
  }
  
  var incomeStore: Factory<IncomeStore> {
    self { MainActor.assumeIsolated { IncomeLiveStore() } }.singleton
  }
}

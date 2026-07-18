//
//  AppInfoLiveStore.swift
//  MyIncomeUltraApp
//
//  Created by Nana Yaw on 7/17/26.
//

import Foundation

struct AppInfoLiveStore {
  let name: String = "Income Ultra"
  let description: String = "Income Ultra calculates your income from hourly rates or salary, including overtime, and provides detailed financial breakdowns."
  let developer: String = "Jeff Menson"
  let website: String = "https://www.abacusz.com"
  let agreements: Agreements = .init()
  
  var version: String {
    if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
      return version
    }
    return "-"
  }
  
  var compatibility: String {
    if let minVersion = Bundle.main.infoDictionary?["MinimumOSVersion"] as? String {
      return "iOS \(minVersion)+"
    }
    return "-"
  }
}

extension AppInfoLiveStore {
  struct Agreements {
    let privacyPolicyUrl: String = "https://www.abacusz.com"
    let termsAndConditionsUrl: String = "https://www.abacusz.com"
    let copyrightPolicyUrl: String = "https://www.abacusz.com"
    let disclaimerUrl: String = "https://www.abacusz.com"
  }
}

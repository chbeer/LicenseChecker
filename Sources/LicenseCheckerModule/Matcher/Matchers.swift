//
//  Matchers.swift
//  LicenseChecker
//
//  Created by Christian Beer on 12.02.25.
//


let registeredMatchers: [LicenseMatcher] = [
    MITMatcher(),
    ApacheMatcher(),
    BSDMatcher(),
    BoringSSLMatcher(),
    ZLIBMatcher(),
    PayPalMatcher()
]

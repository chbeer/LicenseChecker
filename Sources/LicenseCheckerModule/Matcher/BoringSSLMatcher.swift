//
//  BoringSSLMatcher.swift
//  LicenseChecker
//
//  Created by Christian Beer on 12.02.25.
//

struct BoringSSLMatcher: @unchecked Sendable, SubstringMatcher {
    
    var type: LicenseType { .boringSSL }
    
    var substrings: [String] {
        ["BoringSSL is a fork of OpenSSL"]
    }
    
}

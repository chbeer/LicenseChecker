//
//  ZLIBMatcher.swift
//  LicenseChecker
//
//  Created by Christian Beer on 12.02.25.
//

struct ZLIBMatcher: @unchecked Sendable, SubstringMatcher {
    
    var type: LicenseType { .zlib }
    
    var substrings: [String] {
        ["This software is provided 'as-is', without any express"]
    }
    
}

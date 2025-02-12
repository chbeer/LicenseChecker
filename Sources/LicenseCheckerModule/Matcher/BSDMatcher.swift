//
//  BSDMatcher.swift
//  LicenseChecker
//
//  Created by Christian Beer on 12.02.25.
//

struct BSDMatcher: @unchecked Sendable, SubstringMatcher {
    
    var type: LicenseType { .bsd }
    
    var substrings: [String] {
        ["Redistribution and use in source and binary forms"]
    }
    
}

//
//  ApacheMatcher.swift
//  LicenseChecker
//
//  Created by Christian Beer on 12.02.25.
//

struct ApacheMatcher: @unchecked Sendable, RegexMatcher {
    
    var type: LicenseType { .apache }
    
    var regularExpressions: [Regex<Substring>] {
        [
            /Apache Licen[sc]e/
        ]
    }
    
}

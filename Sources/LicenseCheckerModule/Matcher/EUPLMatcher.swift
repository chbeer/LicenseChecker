//
//  EUPLMatcher.swift
//  LicenseChecker
//
//  Created by Christian Beer on 12.02.25.
//

// https://spdx.github.io/license-list-data/EUPL-1.2.html

struct EUPLMatcher: @unchecked Sendable, SubstringMatcher {
    
    var type: LicenseType { .eupl }
    
    var substrings: [String] {
        [
            "OPEN-SOURCE-LIZENZ FÜR DIE EUROPÄISCHE UNION v. 1.2"
        ]
    }
    
}

//
//  PayPalMatcher.swift
//  LicenseChecker
//
//  Created by Christian Beer on 12.02.25.
//

struct PayPalMatcher: @unchecked Sendable, SubstringMatcher {
    
    var type: LicenseType { .paypal }
    
    var substrings: [String] {
        [
            "Subject to the terms of this Agreement, PayPal hereby grants you a " +
            "non-exclusive, worldwide, royalty-free license to use, reproduce, prepare " +
            "derivative works from, publicly display, publicly perform, distribute and " +
            "sublicense the Software for any purpose, provided the copyright notice below " +
            "appears in a conspicuous location within the source code of the distributed " +
            "Software and this license is distributed in the supporting documentation of the " +
            "Software you distribute. Furthermore, you must comply with all third party " +
            "licenses in order to use the third party software contained in the Software. "
        ]
    }
    
}



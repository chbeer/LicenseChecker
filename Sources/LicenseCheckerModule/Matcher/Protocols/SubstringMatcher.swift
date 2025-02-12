//
//  SubstringMatcher.swift
//  LicenseChecker
//
//  Created by Christian Beer on 12.02.25.
//

/// Checks if all defined substings are contained "as is" in the license text
protocol SubstringMatcher: LicenseMatcher {
    
    var substrings: [String] { get }
    
}

extension SubstringMatcher {
    
    /// Returns true if all substrings are contained in the string)
    func isValid(string: String) -> Bool {
        return substrings.contains(where: {
            string.localizedCaseInsensitiveContains($0)
        })
    }
    
}

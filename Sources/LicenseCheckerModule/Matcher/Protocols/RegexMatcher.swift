//
//  RegexMatcher.swift
//  LicenseChecker
//
//  Created by Christian Beer on 12.02.25.
//

/// Checks the content against a set of regular expressions that all need to be fulfilled
protocol RegexMatcher: LicenseMatcher {
    
    var regularExpressions: [Regex<Substring>] { get }
    
}

extension RegexMatcher {
    
    /// Returns true if all regular expression match (are contained in the string)
    func isValid(string: String) -> Bool {
        return regularExpressions.contains(where: {
            string.contains($0)
        })
    }
    
}

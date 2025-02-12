//
//  File.swift
//  LicenseChecker
//
//  Created by Christian Beer on 12.02.25.
//

import Foundation

/// Checks if a string (the LICENSE -file content) represents a license, by checking the content against well known parts of the content
protocol LicenseMatcher: Sendable {

    /// Represented license
    var type: LicenseType { get }
    
    /// Performs the check
    func isValid(string: String) -> Bool
    
}

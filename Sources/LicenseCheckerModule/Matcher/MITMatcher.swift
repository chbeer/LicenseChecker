//
//  MITMatcher.swift
//  LicenseChecker
//
//  Created by Christian Beer on 12.02.25.
//

/// Checks if  a text represents an MIT license
///
/// based on: https://github.com/spdx/license-list-data/blob/main/template/MIT-testregex.template.txt
///
struct MITMatcher: @unchecked Sendable, SubstringMatcher {
    
    var type: LicenseType { .mit }
    
    var substrings: [String] {
        [
            "Permission is hereby granted, free of charge, to any person obtaining a copy of",
            "to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following",
            "THIS SOFTWARE IS PROVIDED \"AS IS\"",
            "WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.",
            "IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE."
        ]
    }
    
    
}

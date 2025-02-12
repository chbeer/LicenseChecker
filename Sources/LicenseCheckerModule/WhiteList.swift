import Foundation

public struct WhiteList: Decodable {
    var licenses: [String]?
    /// Private or otherwise valid libraries can be added here
    var libraries: [String]?
    /// If a package is known to have a license but lacks a license file, it can be added here
    var knownLicenses: [String:String]?

    public init(licenses: [String]?, libraries: [String]?) {
        self.licenses = licenses
        self.libraries = libraries
    }

    private init?(url: URL) {
        guard let data = try? Data(contentsOf: url),
              let whiteList = try? JSONDecoder().decode(WhiteList.self, from: data) else {
            return nil
        }
        self = whiteList
    }

    public func contains(library libraryName: String) -> Bool {
        return libraries?.contains(libraryName) == true
    }
    public func knownLicense(for libraryName: String) -> LicenseType? {
        return knownLicenses?[libraryName].flatMap({ LicenseType(rawValue: $0) })
    }

    static func load(url: URL) -> WhiteList? {
        guard let data = try? Data(contentsOf: url) else { return nil }
        return try? JSONDecoder().decode(WhiteList.self, from: data)
    }
}

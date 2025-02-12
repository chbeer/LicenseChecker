public enum LicenseType: String {
    case apache = "Apache"
    case mit = "MIT"
    case bsd = "BSD"
    case zlib = "zlib"
    case boringSSL = "BoringSSL"
    case paypal = "PayPal"
    case unknown = "unknown"

    public var lowercased: String {
        rawValue.lowercased()
    }

    init?(text: String) {
        let clean = text
            .replacingOccurrences(of: "\n", with: " ")
            .replacingOccurrences(of: "  ", with: " ")
        if let type = registeredMatchers.first(where: { $0.isValid(string: clean) })?.type {
            self = type
        } else {
            return nil
        }
    }
}

import Foundation



public struct Name {
    public let percentEncodedString: String


    public init(asPercentEncoded percentEncodedString: String) {
        self.percentEncodedString = percentEncodedString
    }


    public static func create(by filename: String) -> ValidationResult<Name, FailureReason> {
        return .valid(Name(asPercentEncoded: filename))
    }


    public enum FailureReason: Error {
        case cannotPercentEncode(debugInfo: String)
    }
}

import Foundation

public struct APIResponse: Codable {
    public var code: Int32?
    public var type: String?
    public var message: String?

    public init(code: Int32? = nil, type: String? = nil, message: String? = nil) {
        self.code = code
        self.type = type
        self.message = message
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.code = try values.decodeIfPresent(Int32.self, forKey: "code")
        self.type = try values.decodeIfPresent(String.self, forKey: "type")
        self.message = try values.decodeIfPresent(String.self, forKey: "message")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(code, forKey: "code")
        try values.encodeIfPresent(type, forKey: "type")
        try values.encodeIfPresent(message, forKey: "message")
    }
}

import Foundation

public struct Provider: Codable {
    /// Example: 10
    public var id: Int64?
    /// Example: "Scottish Widows"
    public var name: String?
    /// Example: "google.com"
    public var loginURL: String?
    /// Example: "google.com"
    public var imageURL: String?
    /// Example: "#ffffff"
    public var colorHex: String?

    public init(id: Int64? = nil, name: String? = nil, loginURL: String? = nil, imageURL: String? = nil, colorHex: String? = nil) {
        self.id = id
        self.name = name
        self.loginURL = loginURL
        self.imageURL = imageURL
        self.colorHex = colorHex
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(Int64.self, forKey: "id")
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.loginURL = try values.decodeIfPresent(String.self, forKey: "loginUrl")
        self.imageURL = try values.decodeIfPresent(String.self, forKey: "imageUrl")
        self.colorHex = try values.decodeIfPresent(String.self, forKey: "colorHex")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(name, forKey: "name")
        try values.encodeIfPresent(loginURL, forKey: "loginUrl")
        try values.encodeIfPresent(imageURL, forKey: "imageUrl")
        try values.encodeIfPresent(colorHex, forKey: "colorHex")
    }
}

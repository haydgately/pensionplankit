import Foundation

public struct Pot: Codable {
    /// Example: "sadfsdf"
    public var id: String?
    /// Example: "pot 1"
    public var potName: String?
    /// Example: 20.0
    public var value: Double?
    /// Example: 20.0
    public var progress: Double?
    public var provider: [String: AnyJSON]?
    /// Example: 680767290
    public var lastUpdated: Int?
    /// Example: false
    public var hasBeenUpdated: Bool?
    public var updates: AnyJSON?

    public init(id: String? = nil, potName: String? = nil, value: Double? = nil, progress: Double? = nil, provider: [String: AnyJSON]? = nil, lastUpdated: Int? = nil, hasBeenUpdated: Bool? = nil, updates: AnyJSON? = nil) {
        self.id = id
        self.potName = potName
        self.value = value
        self.progress = progress
        self.provider = provider
        self.lastUpdated = lastUpdated
        self.hasBeenUpdated = hasBeenUpdated
        self.updates = updates
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(String.self, forKey: "id")
        self.potName = try values.decodeIfPresent(String.self, forKey: "potName")
        self.value = try values.decodeIfPresent(Double.self, forKey: "value")
        self.progress = try values.decodeIfPresent(Double.self, forKey: "progress")
        self.provider = try values.decodeIfPresent([String: AnyJSON].self, forKey: "provider")
        self.lastUpdated = try values.decodeIfPresent(Int.self, forKey: "lastUpdated")
        self.hasBeenUpdated = try values.decodeIfPresent(Bool.self, forKey: "hasBeenUpdated")
        self.updates = try values.decodeIfPresent(AnyJSON.self, forKey: "updates")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(potName, forKey: "potName")
        try values.encodeIfPresent(value, forKey: "value")
        try values.encodeIfPresent(progress, forKey: "progress")
        try values.encodeIfPresent(provider, forKey: "provider")
        try values.encodeIfPresent(lastUpdated, forKey: "lastUpdated")
        try values.encodeIfPresent(hasBeenUpdated, forKey: "hasBeenUpdated")
        try values.encodeIfPresent(updates, forKey: "updates")
    }
}

import Foundation

public struct Update: Codable {
    /// Example: 10759328
    public var date: Int64?
    /// Example: 20.0
    public var value: Double?
    public var xml: AnyJSON?

    public init(date: Int64? = nil, value: Double? = nil, xml: AnyJSON? = nil) {
        self.date = date
        self.value = value
        self.xml = xml
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.date = try values.decodeIfPresent(Int64.self, forKey: "date")
        self.value = try values.decodeIfPresent(Double.self, forKey: "value")
        self.xml = try values.decodeIfPresent(AnyJSON.self, forKey: "xml")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(date, forKey: "date")
        try values.encodeIfPresent(value, forKey: "value")
        try values.encodeIfPresent(xml, forKey: "xml")
    }
}

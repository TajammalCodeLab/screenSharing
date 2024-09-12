//
// UpdateCallRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct UpdateCallRequest: Codable, JSONEncodable, Hashable {
    /** Custom data for this object */
    public var custom: [String: RawJSON]?
    public var settingsOverride: CallSettingsRequest?
    /** the time the call is scheduled to start */
    public var startsAt: Date?

    public init(custom: [String: RawJSON]? = nil, settingsOverride: CallSettingsRequest? = nil, startsAt: Date? = nil) {
        self.custom = custom
        self.settingsOverride = settingsOverride
        self.startsAt = startsAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case custom
        case settingsOverride = "settings_override"
        case startsAt = "starts_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(custom, forKey: .custom)
        try container.encodeIfPresent(settingsOverride, forKey: .settingsOverride)
        try container.encodeIfPresent(startsAt, forKey: .startsAt)
    }
}


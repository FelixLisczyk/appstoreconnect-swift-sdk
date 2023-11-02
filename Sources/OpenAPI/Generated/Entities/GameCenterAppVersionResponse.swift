// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct GameCenterAppVersionResponse: Codable {
	/// GameCenterAppVersion
	public var data: GameCenterAppVersion
	public var included: [IncludedItem]?
	public var links: DocumentLinks

	public enum IncludedItem: Codable {
		case gameCenterAppVersion(GameCenterAppVersion)
		case appStoreVersion(AppStoreVersion)

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			if let value = try? container.decode(GameCenterAppVersion.self) {
				self = .gameCenterAppVersion(value)
			} else if let value = try? container.decode(AppStoreVersion.self) {
				self = .appStoreVersion(value)
			} else {
				throw DecodingError.dataCorruptedError(in: container, debugDescription: "Failed to intialize `oneOf`")
			}
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.singleValueContainer()
			switch self {
			case .gameCenterAppVersion(let value): try container.encode(value)
			case .appStoreVersion(let value): try container.encode(value)
			}
		}
	}

	public init(data: GameCenterAppVersion, included: [IncludedItem]? = nil, links: DocumentLinks) {
		self.data = data
		self.included = included
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode(GameCenterAppVersion.self, forKey: "data")
		self.included = try values.decodeIfPresent([IncludedItem].self, forKey: "included")
		self.links = try values.decode(DocumentLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
		try values.encodeIfPresent(included, forKey: "included")
		try values.encode(links, forKey: "links")
	}
}

// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppWithoutIncludesResponse: Codable {
	/// PrereleaseVersion
	public var data: PrereleaseVersion
	public var links: DocumentLinks

	public init(data: PrereleaseVersion, links: DocumentLinks) {
		self.data = data
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode(PrereleaseVersion.self, forKey: "data")
		self.links = try values.decode(DocumentLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
		try values.encode(links, forKey: "links")
	}
}

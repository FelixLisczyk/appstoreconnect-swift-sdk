// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct ReviewSubmissionItemsResponse: Codable {
	public var data: [ReviewSubmissionItem]
	public var included: [IncludedItem]?
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public enum IncludedItem: Codable {
		case appStoreVersion(AppStoreVersion)
		case appCustomProductPageVersion(AppCustomProductPageVersion)
		case appStoreVersionExperiment(AppStoreVersionExperiment)
		case appStoreVersionExperimentV2(AppStoreVersionExperimentV2)
		case appEvent(AppEvent)

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			if let value = try? container.decode(AppStoreVersion.self) {
				self = .appStoreVersion(value)
			} else if let value = try? container.decode(AppCustomProductPageVersion.self) {
				self = .appCustomProductPageVersion(value)
			} else if let value = try? container.decode(AppStoreVersionExperiment.self) {
				self = .appStoreVersionExperiment(value)
			} else if let value = try? container.decode(AppStoreVersionExperimentV2.self) {
				self = .appStoreVersionExperimentV2(value)
			} else if let value = try? container.decode(AppEvent.self) {
				self = .appEvent(value)
			} else {
				throw DecodingError.dataCorruptedError(in: container, debugDescription: "Failed to intialize `oneOf`")
			}
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.singleValueContainer()
			switch self {
			case .appStoreVersion(let value): try container.encode(value)
			case .appCustomProductPageVersion(let value): try container.encode(value)
			case .appStoreVersionExperiment(let value): try container.encode(value)
			case .appStoreVersionExperimentV2(let value): try container.encode(value)
			case .appEvent(let value): try container.encode(value)
			}
		}
	}

	public init(data: [ReviewSubmissionItem], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.included = included
		self.links = links
		self.meta = meta
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode([ReviewSubmissionItem].self, forKey: "data")
		self.included = try values.decodeIfPresent([IncludedItem].self, forKey: "included")
		self.links = try values.decode(PagedDocumentLinks.self, forKey: "links")
		self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
		try values.encodeIfPresent(included, forKey: "included")
		try values.encode(links, forKey: "links")
		try values.encodeIfPresent(meta, forKey: "meta")
	}
}

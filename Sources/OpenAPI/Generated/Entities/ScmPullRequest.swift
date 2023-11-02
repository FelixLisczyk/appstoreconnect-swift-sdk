// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct ScmPullRequest: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case scmPullRequests
	}

	public struct Attributes: Codable {
		public var title: String?
		public var number: Int?
		public var webURL: URL?
		public var sourceRepositoryOwner: String?
		public var sourceRepositoryName: String?
		public var sourceBranchName: String?
		public var destinationRepositoryOwner: String?
		public var destinationRepositoryName: String?
		public var destinationBranchName: String?
		public var isClosed: Bool?
		public var isCrossRepository: Bool?

		public init(title: String? = nil, number: Int? = nil, webURL: URL? = nil, sourceRepositoryOwner: String? = nil, sourceRepositoryName: String? = nil, sourceBranchName: String? = nil, destinationRepositoryOwner: String? = nil, destinationRepositoryName: String? = nil, destinationBranchName: String? = nil, isClosed: Bool? = nil, isCrossRepository: Bool? = nil) {
			self.title = title
			self.number = number
			self.webURL = webURL
			self.sourceRepositoryOwner = sourceRepositoryOwner
			self.sourceRepositoryName = sourceRepositoryName
			self.sourceBranchName = sourceBranchName
			self.destinationRepositoryOwner = destinationRepositoryOwner
			self.destinationRepositoryName = destinationRepositoryName
			self.destinationBranchName = destinationBranchName
			self.isClosed = isClosed
			self.isCrossRepository = isCrossRepository
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.title = try values.decodeIfPresent(String.self, forKey: "title")
			self.number = try values.decodeIfPresent(Int.self, forKey: "number")
			self.webURL = try values.decodeIfPresent(URL.self, forKey: "webUrl")
			self.sourceRepositoryOwner = try values.decodeIfPresent(String.self, forKey: "sourceRepositoryOwner")
			self.sourceRepositoryName = try values.decodeIfPresent(String.self, forKey: "sourceRepositoryName")
			self.sourceBranchName = try values.decodeIfPresent(String.self, forKey: "sourceBranchName")
			self.destinationRepositoryOwner = try values.decodeIfPresent(String.self, forKey: "destinationRepositoryOwner")
			self.destinationRepositoryName = try values.decodeIfPresent(String.self, forKey: "destinationRepositoryName")
			self.destinationBranchName = try values.decodeIfPresent(String.self, forKey: "destinationBranchName")
			self.isClosed = try values.decodeIfPresent(Bool.self, forKey: "isClosed")
			self.isCrossRepository = try values.decodeIfPresent(Bool.self, forKey: "isCrossRepository")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(title, forKey: "title")
			try values.encodeIfPresent(number, forKey: "number")
			try values.encodeIfPresent(webURL, forKey: "webUrl")
			try values.encodeIfPresent(sourceRepositoryOwner, forKey: "sourceRepositoryOwner")
			try values.encodeIfPresent(sourceRepositoryName, forKey: "sourceRepositoryName")
			try values.encodeIfPresent(sourceBranchName, forKey: "sourceBranchName")
			try values.encodeIfPresent(destinationRepositoryOwner, forKey: "destinationRepositoryOwner")
			try values.encodeIfPresent(destinationRepositoryName, forKey: "destinationRepositoryName")
			try values.encodeIfPresent(destinationBranchName, forKey: "destinationBranchName")
			try values.encodeIfPresent(isClosed, forKey: "isClosed")
			try values.encodeIfPresent(isCrossRepository, forKey: "isCrossRepository")
		}
	}

	public struct Relationships: Codable {
		public var repository: Repository?

		public struct Repository: Codable {
			public var links: Links?
			public var data: Data?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Data: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case scmRepositories
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(links: Links? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public init(repository: Repository? = nil) {
			self.repository = repository
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.repository = try values.decodeIfPresent(Repository.self, forKey: "repository")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(repository, forKey: "repository")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.relationships = relationships
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
		self.links = try values.decodeIfPresent(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encodeIfPresent(relationships, forKey: "relationships")
		try values.encodeIfPresent(links, forKey: "links")
	}
}

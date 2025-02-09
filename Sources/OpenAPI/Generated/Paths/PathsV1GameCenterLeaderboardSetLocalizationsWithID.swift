// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterLeaderboardSetLocalizations {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/gameCenterLeaderboardSetLocalizations/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterLeaderboardSetLocalizationResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations]?
			public var include: [Include]?
			public var fieldsGameCenterLeaderboardSetImages: [FieldsGameCenterLeaderboardSetImages]?

			public enum FieldsGameCenterLeaderboardSetLocalizations: String, Codable, CaseIterable {
				case gameCenterLeaderboardSet
				case gameCenterLeaderboardSetImage
				case locale
				case name
			}

			public enum Include: String, Codable, CaseIterable {
				case gameCenterLeaderboardSet
				case gameCenterLeaderboardSetImage
			}

			public enum FieldsGameCenterLeaderboardSetImages: String, Codable, CaseIterable {
				case assetDeliveryState
				case fileName
				case fileSize
				case gameCenterLeaderboardSetLocalization
				case imageAsset
				case uploadOperations
				case uploaded
			}

			public init(fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations]? = nil, include: [Include]? = nil, fieldsGameCenterLeaderboardSetImages: [FieldsGameCenterLeaderboardSetImages]? = nil) {
				self.fieldsGameCenterLeaderboardSetLocalizations = fieldsGameCenterLeaderboardSetLocalizations
				self.include = include
				self.fieldsGameCenterLeaderboardSetImages = fieldsGameCenterLeaderboardSetImages
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsGameCenterLeaderboardSetLocalizations, forKey: "fields[gameCenterLeaderboardSetLocalizations]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsGameCenterLeaderboardSetImages, forKey: "fields[gameCenterLeaderboardSetImages]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.GameCenterLeaderboardSetLocalizationUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.GameCenterLeaderboardSetLocalizationResponse> {
			.patch(path, body: body)
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}

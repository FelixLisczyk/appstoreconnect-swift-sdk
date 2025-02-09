// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterAppVersions.WithID.Relationships {
	public var compatibilityVersions: CompatibilityVersions {
		CompatibilityVersions(path: path + "/compatibilityVersions")
	}

	public struct CompatibilityVersions {
		/// Path: `/v1/gameCenterAppVersions/{id}/relationships/compatibilityVersions`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterAppVersionCompatibilityVersionsLinkagesResponse> {
			.get(path, query: makeGetQuery(limit))
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public func post(_ body: AppStoreConnect_Swift_SDK.GameCenterAppVersionCompatibilityVersionsLinkagesRequest) -> Request<Void> {
			.post(path, body: body)
		}

		public func delete(_ body: AppStoreConnect_Swift_SDK.GameCenterAppVersionCompatibilityVersionsLinkagesRequest) -> Request<Void> {
			.delete(path, body: body)
		}
	}
}

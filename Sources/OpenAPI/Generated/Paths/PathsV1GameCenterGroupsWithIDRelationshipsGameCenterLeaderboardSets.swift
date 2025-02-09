// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterGroups.WithID.Relationships {
	public var gameCenterLeaderboardSets: GameCenterLeaderboardSets {
		GameCenterLeaderboardSets(path: path + "/gameCenterLeaderboardSets")
	}

	public struct GameCenterLeaderboardSets {
		/// Path: `/v1/gameCenterGroups/{id}/relationships/gameCenterLeaderboardSets`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterGroupGameCenterLeaderboardSetsLinkagesResponse> {
			.get(path, query: makeGetQuery(limit))
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.GameCenterGroupGameCenterLeaderboardSetsLinkagesRequest) -> Request<Void> {
			.patch(path, body: body)
		}
	}
}

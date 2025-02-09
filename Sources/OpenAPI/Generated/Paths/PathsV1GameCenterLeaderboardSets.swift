// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var gameCenterLeaderboardSets: GameCenterLeaderboardSets {
		GameCenterLeaderboardSets(path: path + "/gameCenterLeaderboardSets")
	}

	public struct GameCenterLeaderboardSets {
		/// Path: `/v1/gameCenterLeaderboardSets`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.GameCenterLeaderboardSetCreateRequest) -> Request<AppStoreConnect_Swift_SDK.GameCenterLeaderboardSetResponse> {
			.post(path, body: body)
		}
	}
}

// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var gameCenterLeaderboardSetReleases: GameCenterLeaderboardSetReleases {
		GameCenterLeaderboardSetReleases(path: path + "/gameCenterLeaderboardSetReleases")
	}

	public struct GameCenterLeaderboardSetReleases {
		/// Path: `/v1/gameCenterLeaderboardSetReleases`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.GameCenterLeaderboardSetReleaseCreateRequest) -> Request<AppStoreConnect_Swift_SDK.GameCenterLeaderboardSetReleaseResponse> {
			.post(path, body: body)
		}
	}
}

// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var gameCenterAchievementLocalizations: GameCenterAchievementLocalizations {
		GameCenterAchievementLocalizations(path: path + "/gameCenterAchievementLocalizations")
	}

	public struct GameCenterAchievementLocalizations {
		/// Path: `/v1/gameCenterAchievementLocalizations`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.GameCenterAchievementLocalizationCreateRequest) -> Request<AppStoreConnect_Swift_SDK.GameCenterAchievementLocalizationResponse> {
			.post(path, body: body)
		}
	}
}

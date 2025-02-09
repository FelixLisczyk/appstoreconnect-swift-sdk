// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterDetails.WithID.Relationships {
	public var achievementReleases: AchievementReleases {
		AchievementReleases(path: path + "/achievementReleases")
	}

	public struct AchievementReleases {
		/// Path: `/v1/gameCenterDetails/{id}/relationships/achievementReleases`
		public let path: String
	}
}

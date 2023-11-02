// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterAchievements.WithID.Relationships {
	public var releases: Releases {
		Releases(path: path + "/releases")
	}

	public struct Releases {
		/// Path: `/v1/gameCenterAchievements/{id}/relationships/releases`
		public let path: String
	}
}

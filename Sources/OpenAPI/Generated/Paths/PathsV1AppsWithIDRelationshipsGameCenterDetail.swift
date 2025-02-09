// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID.Relationships {
	public var gameCenterDetail: GameCenterDetail {
		GameCenterDetail(path: path + "/gameCenterDetail")
	}

	public struct GameCenterDetail {
		/// Path: `/v1/apps/{id}/relationships/gameCenterDetail`
		public let path: String
	}
}

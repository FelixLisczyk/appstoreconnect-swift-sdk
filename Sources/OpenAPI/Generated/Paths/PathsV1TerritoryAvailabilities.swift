// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var territoryAvailabilities: TerritoryAvailabilities {
		TerritoryAvailabilities(path: path + "/territoryAvailabilities")
	}

	public struct TerritoryAvailabilities {
		/// Path: `/v1/territoryAvailabilities`
		public let path: String
	}
}

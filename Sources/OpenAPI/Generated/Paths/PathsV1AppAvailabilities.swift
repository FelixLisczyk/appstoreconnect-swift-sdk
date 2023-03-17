// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appAvailabilities: AppAvailabilities {
		AppAvailabilities(path: path + "/appAvailabilities")
	}

	public struct AppAvailabilities {
		/// Path: `/v1/appAvailabilities`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppAvailabilityCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppAvailabilityResponse> {
			.post(path, body: body)
		}
	}
}

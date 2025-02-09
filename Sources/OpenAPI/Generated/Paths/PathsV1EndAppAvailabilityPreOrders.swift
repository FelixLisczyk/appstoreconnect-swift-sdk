// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var endAppAvailabilityPreOrders: EndAppAvailabilityPreOrders {
		EndAppAvailabilityPreOrders(path: path + "/endAppAvailabilityPreOrders")
	}

	public struct EndAppAvailabilityPreOrders {
		/// Path: `/v1/endAppAvailabilityPreOrders`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.EndAppAvailabilityPreOrderCreateRequest) -> Request<AppStoreConnect_Swift_SDK.EndAppAvailabilityPreOrderResponse> {
			.post(path, body: body)
		}
	}
}

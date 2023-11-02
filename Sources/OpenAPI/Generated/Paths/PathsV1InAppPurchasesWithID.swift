// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.InAppPurchases {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/inAppPurchases/{id}`
		public let path: String

		@available(*, deprecated, message: "Deprecated")
		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.InAppPurchaseResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsInAppPurchases: [FieldsInAppPurchases]?
			public var include: [Include]?
			public var limitApps: Int?

			public enum FieldsInAppPurchases: String, Codable, CaseIterable {
				case apps
				case inAppPurchaseType
				case productID = "productId"
				case referenceName
				case state
			}

			public enum Include: String, Codable, CaseIterable {
				case apps
			}

			public init(fieldsInAppPurchases: [FieldsInAppPurchases]? = nil, include: [Include]? = nil, limitApps: Int? = nil) {
				self.fieldsInAppPurchases = fieldsInAppPurchases
				self.include = include
				self.limitApps = limitApps
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsInAppPurchases, forKey: "fields[inAppPurchases]")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitApps, forKey: "limit[apps]")
				return encoder.items
			}
		}
	}
}

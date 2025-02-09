// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppCategories.WithID {
	public var subcategories: Subcategories {
		Subcategories(path: path + "/subcategories")
	}

	public struct Subcategories {
		/// Path: `/v1/appCategories/{id}/subcategories`
		public let path: String

		public func get(fieldsAppCategories: [FieldsAppCategories]? = nil, limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.AppCategoriesWithoutIncludesResponse> {
			.get(path, query: makeGetQuery(fieldsAppCategories, limit))
		}

		private func makeGetQuery(_ fieldsAppCategories: [FieldsAppCategories]?, _ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsAppCategories, forKey: "fields[appCategories]", explode: false)
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public enum FieldsAppCategories: String, Codable, CaseIterable {
			case parent
			case platforms
			case subcategories
		}
	}
}

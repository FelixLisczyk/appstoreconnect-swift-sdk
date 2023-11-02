// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.BetaAppLocalizations.WithID {
	public var app: App {
		App(path: path + "/app")
	}

	public struct App {
		/// Path: `/v1/betaAppLocalizations/{id}/app`
		public let path: String

		public func get(fieldsApps: [FieldsApps]? = nil) -> Request<AppStoreConnect_Swift_SDK.AppWithoutIncludesResponse> {
			.get(path, query: makeGetQuery(fieldsApps))
		}

		private func makeGetQuery(_ fieldsApps: [FieldsApps]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsApps, forKey: "fields[apps]", explode: false)
			return encoder.items
		}

		public enum FieldsApps: String, Codable, CaseIterable {
			case appAvailability
			case appClips
			case appCustomProductPages
			case appEncryptionDeclarations
			case appEvents
			case appInfos
			case appPricePoints
			case appPriceSchedule
			case appStoreVersionExperimentsV2
			case appStoreVersions
			case availableInNewTerritories
			case availableTerritories
			case betaAppLocalizations
			case betaAppReviewDetail
			case betaGroups
			case betaLicenseAgreement
			case betaTesters
			case builds
			case bundleID = "bundleId"
			case ciProduct
			case contentRightsDeclaration
			case customerReviews
			case endUserLicenseAgreement
			case gameCenterDetail
			case gameCenterEnabledVersions
			case inAppPurchases
			case inAppPurchasesV2
			case isOrEverWasMadeForKids
			case name
			case perfPowerMetrics
			case preOrder
			case preReleaseVersions
			case pricePoints
			case prices
			case primaryLocale
			case promotedPurchases
			case reviewSubmissions
			case sku
			case subscriptionGracePeriod
			case subscriptionGroups
			case subscriptionStatusURL = "subscriptionStatusUrl"
			case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
			case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
			case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
		}
	}
}

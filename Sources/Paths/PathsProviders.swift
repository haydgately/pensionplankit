import Foundation
import Get

extension Paths {
    public static var providers: Providers {
        Providers(path: "/providers")
    }

    public struct Providers {
        /// Path: `/providers`
        public let path: String

        /// Get all providers
        ///
        /// Returns all providers
        public var get: Request<[PensionPlanKit.Provider]> {
            Request(method: "GET", url: path, id: "getProviders")
        }
    }
}

import Foundation
import Get

extension Paths {
    public static var provider: Provider {
        Provider(path: "/provider")
    }

    public struct Provider {
        /// Path: `/provider`
        public let path: String

        /// Get all providers
        ///
        /// Returns all providers
        public var get: Request<PensionPlanKit.Provider> {
            Request(method: "GET", url: path, id: "getProviders")
        }
    }
}

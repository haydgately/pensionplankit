import Foundation
import Get

extension Paths {
    public static var pots: Pots {
        Pots(path: "/pots")
    }

    public struct Pots {
        /// Path: `/pots`
        public let path: String

        /// Get all pots
        ///
        /// Returns all pots
        public var get: Request<[PensionPlanKit.Pot]> {
            Request(method: "GET", url: path, id: "getpots")
        }
    }
}

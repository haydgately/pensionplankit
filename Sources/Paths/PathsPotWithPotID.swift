import Foundation
import Get

extension Paths.Pot {
    public func potID(_ potID: Int) -> WithPotID {
        WithPotID(path: "\(path)/\(potID)")
    }

    public struct WithPotID {
        /// Path: `/pot/{potId}`
        public let path: String

        /// Find pot by ID
        ///
        /// Returns a single pot
        public var get: Request<PensionPlanKit.Pot> {
            Request(method: "GET", url: path, id: "getpotById")
        }
    }
}

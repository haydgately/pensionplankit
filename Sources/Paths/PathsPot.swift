import Foundation
import Get

extension Paths {
    public static var pot: Pot {
        Pot(path: "/pot")
    }

    public struct Pot {
        /// Path: `/pot`
        public let path: String

        /// Add a new pot to the DB
        public func post(_ body: PensionPlanKit.Pot) -> Request<PensionPlanKit.Pot> {
            Request(method: "POST", url: path, body: body, id: "addpot")
        }

        /// Update an existing pot
        ///
        /// Update an existing pot by Id
        public func put(_ body: PensionPlanKit.Pot) -> Request<PensionPlanKit.Pot> {
            Request(method: "PUT", url: path, body: body, id: "updatepot")
        }
    }
}

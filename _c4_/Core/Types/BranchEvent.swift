// Copyright SIX DAY LLC. All rights reserved.

import Foundation
import _c4_Core

enum BranchEventName: String {
    case openURL
    case newToken
}

enum BranchEvent {
    case openURL(URL)
    case newToken(Address)

    var params: [String: String] {
        switch self {
        case .openURL(let url):
            let urlString = url.absoluteString
            return [
                "url": urlString,
                "$canonical_url": urlString,
                "~campaign": "_c4_-ios-browser-sharing",
                "~channel": "_c4_-ios-browser-sharing",
                "event": BranchEventName.openURL.rawValue,
            ]
        case .newToken(let address):
            return [
                "contract": address.eip55String,
                "event": BranchEventName.newToken.rawValue,
            ]
        }
    }
}

extension BranchEvent: Equatable {
    static func == (lhs: BranchEvent, rhs: BranchEvent) -> Bool {
        switch (lhs, rhs) {
        case (let .openURL(lhs), let .openURL(rhs)):
            return lhs == rhs
        case (let .newToken(lhs), let .newToken(rhs)):
            return lhs == rhs
        case (_, .openURL),
             (_, .newToken):
            return false
        }
    }
}
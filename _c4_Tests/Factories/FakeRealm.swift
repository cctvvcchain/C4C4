// Copyright SIX DAY LLC. All rights reserved.

import Foundation
@testable import _c4_
import RealmSwift

extension Realm {
    static func make() -> Realm {
        return try! Realm(configuration: Realm.Configuration(inMemoryIdentifier: "MyInMemoryRealm"))
    }
}

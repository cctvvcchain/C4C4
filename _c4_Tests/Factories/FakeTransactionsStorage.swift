// Copyright SIX DAY LLC. All rights reserved.

import Foundation
@testable import _c4_
import RealmSwift

class FakeTransactionsStorage: TransactionsStorage {
    convenience init() {
        let realm = try! Realm(configuration: Realm.Configuration(inMemoryIdentifier: "MyInMemoryRealm" + UUID().uuidString))
        self.init(realm: realm, account: .make())
    }
}

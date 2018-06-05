// Copyright SIX DAY LLC. All rights reserved.

import Foundation
@testable import _c4_

extension GetNonceProvider {
    static func make(
        storage: TransactionsStorage = FakeTransactionsStorage()
    ) -> GetNonceProvider {
        return GetNonceProvider(
            storage: storage
        )
    }
}

// Copyright SIX DAY LLC. All rights reserved.

import Foundation
@testable import _c4_
import _c4_Core
import _c4_Keystore

extension Account {
    static func make(
        address: Address = .make(),
        type: AccountType = .encryptedKey,
        url: URL = URL(fileURLWithPath: "")
    ) -> Account {
        return Account(address: address, type: type, url: url)
    }
}




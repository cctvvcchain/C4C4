// Copyright SIX DAY LLC. All rights reserved.

import Foundation
@testable import _c4_

extension Wallet {
    static func make(
        type: WalletType = .privateKey(.make())
    ) -> Wallet {
        return Wallet(
            type: type
        )
    }
}

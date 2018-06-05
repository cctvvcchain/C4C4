// Copyright SIX DAY LLC. All rights reserved.

import Foundation
@testable import _c4_
import _c4_Core

extension Address {
    static func make(
        address: String = "0x1000000000000000000000000000000000000000"
    ) -> Address {
        return Address(
            string: address
        )!
    }
}

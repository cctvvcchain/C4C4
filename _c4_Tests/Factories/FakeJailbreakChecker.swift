// Copyright SIX DAY LLC. All rights reserved.

import Foundation
@testable import _c4_

class FakeJailbreakChecker: JailbreakChecker {
    let jailbroken: Bool

    init(jailbroken: Bool) {
        self.jailbroken = jailbroken
    }

    func isJailbroken() -> Bool {
        return jailbroken
    }
}

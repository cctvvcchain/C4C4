// Copyright SIX DAY LLC. All rights reserved.

import UIKit
@testable import _c4_

class FakeLockProtocol: LockInterface {

    var passcodeSet = true
    var showProtection = true

    func isPasscodeSet() -> Bool {
        return passcodeSet
    }

    func shouldShowProtection() -> Bool {
        return isPasscodeSet() && showProtection
    }
}

// Copyright SIX DAY LLC. All rights reserved.

import Foundation
@testable import _c4_

extension PreferencesController {
    static func make(
        userDefaults: UserDefaults = .test
    ) -> PreferencesController {
        return PreferencesController(
            userDefaults: userDefaults
        )
    }
}

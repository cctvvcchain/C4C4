// Copyright SIX DAY LLC. All rights reserved.

import Foundation
@testable import _c4_

extension Config {
    static func make(
        defaults: UserDefaults = .test
    ) -> Config {
        return Config(
            defaults: defaults
        )
    }
}

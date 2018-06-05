// Copyright SIX DAY LLC. All rights reserved.

import Foundation
@testable import _c4_

extension ChainState {
    static func make(
        config: Config = .make()
    ) -> ChainState {
        return ChainState(
            config: config
        )
    }
}

// Copyright SIX DAY LLC. All rights reserved.

import XCTest
@testable import _c4_

class ExportPrivateKeyCoordinatorTests: XCTestCase {
    
    func testStart() {
        let coordinator = ExportPrivateKeyCoordinator(
            keystore: FakeEtherKeystore(),
            account: .make()
        )

        coordinator.start()

        XCTAssertTrue(coordinator.navigationController.viewControllers[0] is ExportPrivateKeyViewConroller)
    }
}

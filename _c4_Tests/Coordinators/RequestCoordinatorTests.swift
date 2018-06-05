// Copyright SIX DAY LLC. All rights reserved.

import XCTest
@testable import _c4_

class RequestCoordinatorTests: XCTestCase {

    func testRootViewController() {
        let coordinator = RequestCoordinator(
            navigationController: FakeNavigationController(),
            session: .make(),
            token: .make()
        )

        coordinator.start()

        XCTAssertTrue(coordinator.navigationController.viewControllers.first is RequestViewController)
    }
}


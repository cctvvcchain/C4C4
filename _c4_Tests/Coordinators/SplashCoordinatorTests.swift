// Copyright SIX DAY LLC. All rights reserved.

import XCTest
@testable import _c4_


class SplashCoordinatorTests: XCTestCase {
    func testStart() {
        let window = UIWindow()
        let coordinator = SplashCoordinator(window: window)
        coordinator.start()
        XCTAssertFalse(window.isHidden)
    }
    func testStop() {
        let window = UIWindow()
        let coordinator = SplashCoordinator(window: window)
        coordinator.start()
        coordinator.stop()
        XCTAssertTrue(window.isHidden)
    }
}

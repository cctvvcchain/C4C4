// Copyright SIX DAY LLC. All rights reserved.

import XCTest
@testable import _c4_

class LockCreatePasscodeCoordinatorTest: XCTestCase {
    func testStart() {
        let navigationController = NavigationController()
        let coordinator = LockCreatePasscodeCoordinator(navigationController: navigationController, model: LockCreatePasscodeViewModel())
        coordinator.start()
        XCTAssertTrue(navigationController.viewControllers.first is LockCreatePasscodeViewController)
    }
    func testStop() {
        let navigationController = NavigationController()
        let coordinator = LockCreatePasscodeCoordinator(navigationController: navigationController, model: LockCreatePasscodeViewModel())
        coordinator.start()
        XCTAssertTrue(navigationController.viewControllers.first is LockCreatePasscodeViewController)
        XCTAssertNil(navigationController.presentedViewController)
    }
}

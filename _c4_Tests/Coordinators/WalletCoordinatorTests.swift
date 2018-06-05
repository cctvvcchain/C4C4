// Copyright SIX DAY LLC. All rights reserved.

import XCTest
@testable import _c4_
import _c4_Core

class WalletCoordinatorTests: XCTestCase {
    
    func testWelcome() {
        let coordinator = WalletCoordinator(
            navigationController: FakeNavigationController(),
            keystore: FakeKeystore()
        )

        coordinator.start(.welcome)

        XCTAssertTrue(coordinator.navigationController.viewControllers[0] is WelcomeViewController)
    }

    func testImportWallet() {
        let coordinator = WalletCoordinator(
            navigationController: FakeNavigationController(),
            keystore: FakeKeystore()
        )

        coordinator.start(.importWallet)

        XCTAssertTrue(coordinator.navigationController.viewControllers[0] is ImportWalletViewController)
    }

    func testCreateInstantWallet() {
        let delegate = FakeWalletCoordinatorDelegate()
        let coordinator = WalletCoordinator(
            navigationController: FakeNavigationController(),
            keystore: FakeEtherKeystore()
        )
        coordinator.delegate = delegate

        coordinator.start(.createInstantWallet)

        XCTAssertTrue(coordinator.navigationController.viewControllers[0] is BackupViewController)
    }

    func testPushImportWallet() {
        let coordinator = WalletCoordinator(
            navigationController: FakeNavigationController(),
            keystore: FakeKeystore()
        )

        coordinator.start(.welcome)

        coordinator.pushImportWallet()

        XCTAssertTrue(coordinator.navigationController.viewControllers[1] is ImportWalletViewController)
    }
}

class FakeWalletCoordinatorDelegate: WalletCoordinatorDelegate {
    var didFail: Error? = .none
    var didFinishAccount: _c4_.Wallet? = .none
    var didCancel: Bool = false

    func didCancel(in coordinator: WalletCoordinator) {
        didCancel = true
    }

    func didFinish(with account: _c4_.Wallet, in coordinator: WalletCoordinator) {
        didFinishAccount = account
    }

    func didFail(with error: Error, in coordinator: WalletCoordinator) {
        didFail = error
    }
}

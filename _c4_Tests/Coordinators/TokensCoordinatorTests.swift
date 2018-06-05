// Copyright SIX DAY LLC. All rights reserved.

import XCTest
@testable import _c4_

class TokensCoordinatorTests: XCTestCase {
    
    func testRootViewController() {
        let coordinator = TokensCoordinator(
            navigationController: FakeNavigationController(),
            session: .make(),
            keystore: FakeKeystore(),
            tokensStorage: FakeTokensDataStore(),
            network: FakeTokensNetwork(provider: _c4_ProviderFactory.makeProvider(), balanceService: FakeGetBalanceCoordinator(), account: .make(), config: .make()), transactionsStore: FakeTransactionsStorage()
        )
        
        coordinator.start()
        
        XCTAssertTrue(coordinator.navigationController.viewControllers[0] is WalletViewController)
    }
}

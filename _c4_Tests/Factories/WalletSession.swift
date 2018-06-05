// Copyright SIX DAY LLC. All rights reserved.

import Foundation
@testable import _c4_
import _c4_Core
import BigInt

extension WalletSession {
    static func make(
        account: _c4_.Wallet = .make(),
        config: Config = .make()
    ) -> WalletSession {
        let balance =  BalanceCoordinator(account: account, config: config, storage: FakeTokensDataStore())
        return WalletSession(
            account: account,
            config: config,
            balanceCoordinator: balance,
            nonceProvider: GetNonceProvider.make()
        )
    }
    static func makeWithEthBalance(
        account: _c4_.Wallet = .make(),
        config: Config = .make(),
        amount: String
        ) -> WalletSession {
        let balance =  BalanceCoordinator(account: account, config: config, storage: FakeTokensDataStore())
        balance.balance = Balance(value:BigInt(amount)!)
        return WalletSession(
            account: account,
            config: config,
            balanceCoordinator: balance,
            nonceProvider: GetNonceProvider.make()
        )
    }
}

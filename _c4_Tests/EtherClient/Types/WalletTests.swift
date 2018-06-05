// Copyright SIX DAY LLC. All rights reserved.

import XCTest
@testable import _c4_
import _c4_Core

class WalletTests: XCTestCase {

    func testPrivateKeyAddressDescription() {
        let wallet = _c4_.Wallet(type: .privateKey(.make()))

        XCTAssertEqual("wallet-private-key-\(wallet.address.description)", wallet.description)
    }

    func testHDWalletAddressDescription() {
        let wallet = _c4_.Wallet(type: .hd(.make()))

        XCTAssertEqual("wallet-hd-wallet-\(wallet.address.description)", wallet.description)
    }

    func testWalletAddressDescription() {
        let wallet = _c4_.Wallet(type: .address(.make()))

        XCTAssertEqual("wallet-address-\(wallet.address.description)", wallet.description)
    }
}

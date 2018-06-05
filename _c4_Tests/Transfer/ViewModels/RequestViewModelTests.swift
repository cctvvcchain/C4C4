// Copyright SIX DAY LLC. All rights reserved.

import XCTest
@testable import _c4_
import _c4_Core

class RequestViewModelTests: XCTestCase {
    
    func testMyAddressText() {
        let account: _c4_.Wallet = .make()
        let viewModel = RequestViewModel(account: account, config: .make(), token: .make())

        XCTAssertEqual(account.address.description, viewModel.myAddressText)
    }

    func testShareMyAddressText() {
        let account: _c4_.Wallet = .make()
        let config: Config = .make()
        let viewModel = RequestViewModel(account: account, config: .make(), token: .make())

        XCTAssertEqual("My \(config.server.name) address is: \(account.address.description)", viewModel.shareMyAddressText)
    }
}

// Copyright SIX DAY LLC. All rights reserved.

import XCTest
@testable import _c4_

class ConfirmPaymentViewModelTests: XCTestCase {
    
    func testActionButtonTitleOnSign() {
        let viewModel = ConfirmPaymentViewModel(type: .sign)

        XCTAssertEqual("Approve", viewModel.actionButtonText)
    }

    func testActionButtonTitleOnSignAndSend() {
        let viewModel = ConfirmPaymentViewModel(type: .signThenSend)

        XCTAssertEqual("Send", viewModel.actionButtonText)
    }
}

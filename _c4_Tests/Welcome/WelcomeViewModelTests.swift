// Copyright SIX DAY LLC. All rights reserved.

import XCTest
@testable import _c4_

class WelcomeViewModelTests: XCTestCase {
    
    func testTitle() {
        let viewModel = WelcomeViewModel()
        
        XCTAssertEqual("Welcome", viewModel.title)
    }
}

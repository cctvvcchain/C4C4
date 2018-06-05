// Copyright SIX DAY LLC. All rights reserved.

import XCTest
@testable import _c4_
import BigInt

class GasLimitConfigurationTests: XCTestCase {
    
    func testDefault() {
        XCTAssertEqual(BigInt(90000), GasLimitConfiguration.default)
        XCTAssertEqual(BigInt(21000), GasLimitConfiguration.min)
        XCTAssertEqual(BigInt(300000), GasLimitConfiguration.max)
    }
}

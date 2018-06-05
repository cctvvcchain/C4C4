// Copyright SIX DAY LLC. All rights reserved.

import XCTest
@testable import _c4_

class PasswordGeneratorTests: XCTestCase {
    
    func testGenerateRandom() {
        let password = PasswordGenerator.generateRandom()

        XCTAssertEqual(64, password.count)
    }

    func testGenerateRandomBytes() {
        let password = PasswordGenerator.generateRandomString(bytesCount: 8)

        XCTAssertEqual(16, password.count)
    }
}
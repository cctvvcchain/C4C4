// Copyright SIX DAY LLC. All rights reserved.

import XCTest
@testable import _c4_

class BranchEventParserTests: XCTestCase {
    
    func testOpenURL() {
        let result = BranchEventParser.from(params: [
            "event": "openURL" as AnyObject,
            "url": "https://_c4_walletapp.com" as AnyObject
        ])

        let expectedEvent = BranchEvent.openURL(URL(string: "https://_c4_walletapp.com")!)
        XCTAssertEqual(expectedEvent, result)
    }
}

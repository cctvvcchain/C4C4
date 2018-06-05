// Copyright SIX DAY LLC. All rights reserved.

import XCTest
@testable import _c4_

class BrowserURLParserTests: XCTestCase {
    
    func testQueryReturnsSearchEngineURL() {
        let parser = BrowserURLParser()
        let query = "1"
        let result = parser.url(from: query)
        let expected = "https://\(parser.engine.host)/search?q=1"

        XCTAssertEqual(result?.absoluteString, expected)
    }

    func testEscapeQuery() {
        let parser = BrowserURLParser()
        let query = "1 2?a=b&c"
        let result = parser.url(from: query)
        let expected = "https://\(parser.engine.host)/search?q=1%202?a%3Db%26c"

        XCTAssertEqual(result?.absoluteString, expected)
    }

    func testParseDomain() {
        let parser = BrowserURLParser()
        let query = "_c4_walletapp.com"
        let result = parser.url(from: query)

        XCTAssertEqual(result?.absoluteString, "http://_c4_walletapp.com")
    }

    func testParseHttp() {
        let parser = BrowserURLParser()
        let string = "http://_c4_walletapp.com"
        let result = parser.url(from: string)

        XCTAssertEqual(string, result?.absoluteString)
    }

    func testParseHttps() {
        let parser = BrowserURLParser()
        let string = "https://_c4_walletapp.com"
        let result = parser.url(from: string)

        XCTAssertEqual(string, result?.absoluteString)
    }

    func testParseDomainWithPath() {
        let parser = BrowserURLParser()
        let string = "_c4_walletapp.com/path?q=1"
        let result = parser.url(from: string)

        XCTAssertEqual(result?.absoluteString, "http://\(string)")
    }

    func testParseLongDomain() {
        let parser = BrowserURLParser()
        let string = "test._c4_walletapp.info"
        let result = parser.url(from: string)

        XCTAssertEqual(result?.absoluteString, "http://\(string)")
    }

    func testSearchURL() {
        let parser = BrowserURLParser()
        let query = "test"
        let result = parser.buildSearchURL(for: query)
        let expeted = "https://\(parser.engine.host)/search?q=test"

        XCTAssertEqual(result.absoluteString, expeted)
    }
}

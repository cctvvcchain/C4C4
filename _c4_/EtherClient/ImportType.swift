// Copyright SIX DAY LLC. All rights reserved.

import Foundation
import _c4_Core

enum ImportType {
    case keystore(string: String, password: String)
    case privateKey(privateKey: String)
    case mnemonic(words: [String], password: String)
    case watch(address: Address)
}

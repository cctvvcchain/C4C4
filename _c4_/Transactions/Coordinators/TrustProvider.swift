// Copyright SIX DAY LLC. All rights reserved.

import Alamofire
import Foundation
import Moya

struct _c4_ProviderFactory {
    static let policies: [String: Server_c4_Policy] = [
        :
//        Disabled until: https://github.com/_c4_Wallet/_c4_-wallet-ios/pull/129#issuecomment-353718512
//        "_c4_walletapp.com": .pinPublicKeys(
//            publicKeys: Server_c4_Policy.publicKeys(in: Bundle.main),
//            validateCertificateChain: true,
//            validateHost: true
//        ),
    ]

    static func makeProvider() -> MoyaProvider<_c4_Service> {
        let manager = Manager(
            configuration: URLSessionConfiguration.default,
            server_c4_PolicyManager: Server_c4_PolicyManager(policies: policies)
        )
        return MoyaProvider<_c4_Service>(manager: manager)
    }
}

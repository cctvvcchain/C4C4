// Copyright SIX DAY LLC. All rights reserved.

import Moya

protocol _c4_NetworkProtocol {
    var provider: MoyaProvider<_c4_Service> { get }
    var balanceService: TokensBalanceService { get }
    var account: Wallet { get }
    var config: Config { get }
    init(provider: MoyaProvider<_c4_Service>, balanceService: TokensBalanceService, account: Wallet, config: Config)
}

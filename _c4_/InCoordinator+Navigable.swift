// Copyright SIX DAY LLC. All rights reserved.

import Foundation
import URLNavigator
import _c4_WalletSDK

extension InCoordinator: URLNavigable {

    func register(with navigator: Navigator) {
        navigator.handle(URLSchemes.browser) { url, _, _ in
            guard let target = url.queryParameters["target"],
                let targetUrl = URL(string: target) else {
                    return false
            }
            self.showTab(.browser(openURL: targetUrl))
            return true
        }

        navigator.handle("_c4_://sign-transaction") { url, _, _ in
            return self.localSchemeCoordinator?._c4_WalletSDK.handleOpen(url: url as! URL) ?? false
        }

        navigator.handle("_c4_://sign-message") { url, _, _ in
            return self.localSchemeCoordinator?._c4_WalletSDK.handleOpen(url: url as! URL) ?? false
        }
    }
}

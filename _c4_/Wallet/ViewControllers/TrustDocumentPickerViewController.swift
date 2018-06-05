// Copyright SIX DAY LLC. All rights reserved.

import UIKit

class _c4_DocumentPickerViewController: UIDocumentPickerViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UINavigationBar.appearance().tintColor = AppGlobalStyle.docPickerNavigationBarTintColor
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        UINavigationBar.appearance().tintColor = AppGlobalStyle.navigationBarTintColor
    }
}
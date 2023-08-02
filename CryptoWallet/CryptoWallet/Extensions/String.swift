//
//  Color.swift
//  CryptoWallet
//
//  Created by Yanet Rodriguez on 02/08/2023.
//

import Foundation

extension String {
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}

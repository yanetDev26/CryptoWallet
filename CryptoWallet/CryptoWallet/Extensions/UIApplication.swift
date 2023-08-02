//
//  Color.swift
//  CryptoWallet
//
//  Created by Yanet Rodriguez on 02/08/2023.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

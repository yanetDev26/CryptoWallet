//
//  CryptoWalletApp.swift
//  CryptoWallet
//
//  Created by Yanet Rodriguez on 30/07/2023.
//

import SwiftUI

@main
struct CryptoWalletApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView().navigationBarHidden(true)
            }
        }
    }
}

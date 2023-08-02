//
//  HomeView.swift
//  CryptoWallet
//
//  Created by Yanet Rodriguez on 30/07/2023.
//

import SwiftUI

struct HomeView: View {

    @State private var showPortfolio: Bool = false

    var body: some View {
        ZStack {
            Color.theme.background.ignoresSafeArea()
            VStack {
                homeHeader
                Spacer(minLength: 0)
            }
        }
    }
}

extension HomeView {
    private var homeHeader: some View {
        HStack {
            CircleButtonView(iconName: showPortfolio ? "plus" : "info")
                .background(
                    CircleButtonAnimationView(animate: $showPortfolio)
                )
            Spacer()
            Text(showPortfolio ? "Wallet" : "Live Prices")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.accent)
            Spacer()
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()) {
                        showPortfolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView().navigationBarHidden(true)
        }
    }
}

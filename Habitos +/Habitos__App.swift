//
//  Habitos__App.swift
//  Habitos +
//
//  Created by Gabriel Gonzaga  on 21/09/24.
//

import SwiftUI

@main
struct Habitos__App: App {
    var body: some Scene {
        WindowGroup {
            SplashView(viewModel: SplashViewModel())
        }
    }
}

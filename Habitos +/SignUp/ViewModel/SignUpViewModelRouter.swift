//
//  SignUpViewModelRouter.swift
//  Habitos +
//
//  Created by Gabriel Gonzaga  on 24/10/24.
//


import SwiftUI

enum SignUpViewModelRouter {
    static func makeHomeView() -> some View {
        let viewModel = HomeViewModel()
        return HomeView(viewModel: viewModel)
    }
}

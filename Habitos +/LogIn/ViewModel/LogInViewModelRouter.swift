//
//  LogInViewModelRouter.swift
//  Habitos +
//
//  Created by Gabriel Gonzaga  on 18/10/24.
//

import SwiftUI
import Combine

enum LogInViewModelRouter{
    static func makeHomeView() -> some View {
        let viewModel = HomeViewModel()
        return HomeView(viewModel: viewModel)
    }
    
    static func makeSignUpView(publisher: PassthroughSubject<Bool, Never>) -> some View {
        let viewModel = SignUpViewModel()
        viewModel.publisher = publisher
        return SignUpView(viewModel: viewModel)
    }
}

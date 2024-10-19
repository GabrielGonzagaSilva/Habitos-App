//
//  LogInViewModelRouter.swift
//  Habitos +
//
//  Created by Gabriel Gonzaga  on 18/10/24.
//

import SwiftUI



enum LogInViewModelRouter{
    static func makeHomeView() -> some View {
        let viewModel = HomeViewModel()
        return HomeView(viewModel: viewModel)
    }
    
}

//
//  SplashViewRouter.swift
//  Habitos +
//
//  Created by Gabriel Gonzaga  on 23/09/24.
//

import SwiftUI


enum SplashViewModelRouter{
    
    static func makeLogInView() -> some View {
        let viewModel = LogInViewModel()
        return LogInView(viewModel: viewModel)
    }
}

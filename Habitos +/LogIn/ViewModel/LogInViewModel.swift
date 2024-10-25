//
//  LogInViewModel.swift
//  Habitos +
//
//  Created by Gabriel Gonzaga  on 25/09/24.
//

import SwiftUI

enum LogInUIState{
    case none 
    case loading
    case goToHomeScreen
    case error(String)
}

class LogInViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var action: Int? = 0
    @Published var uiState: LogInUIState = .none
    
    func login(){
        if !email.isEmpty && !password.isEmpty {
            self.uiState = .loading
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.uiState = .goToHomeScreen //.error("Senha ou e-mail incorretos")
            }
        }
    }
    
    func HomeView() -> some View {
        return LogInViewModelRouter.makeHomeView()
    }
    
    func signUpView() -> some View {
        return LogInViewModelRouter.makeSignUpView()
    }
}

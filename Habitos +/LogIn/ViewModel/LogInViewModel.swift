//
//  LogInViewModel.swift
//  Habitos +
//
//  Created by Gabriel Gonzaga  on 25/09/24.
//

import SwiftUI

// DEFINE AS REGRAS PARA OS ESTADOS DE TELE A QUAL O APP DEVE SE DIRECIONAR
enum LogInUIState{
    case none // Ocioso
    case loading
    case goToHomeScreen
    case error(String)
}

class LogInViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var action: Int? = 0
    @Published var uiState: LogInUIState = .none // Chama o tipo definino no enum atraves da model
   
    
    // SIMULA REQUISIÇÃO DE LOGIN
    func login(){
        if !email.isEmpty && !password.isEmpty {
            self.uiState = .loading
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.uiState = .goToHomeScreen //.error("Senha ou e-mail incorretos")
            }
        }
    }
    
    
    
    func HomeView() -> some View { // Func que retorna a view
        return LogInViewModelRouter.makeHomeView() // Chamada dentro do SplashViewModelRouter
    }
    
    func signUpView() -> some View {
        return LogInViewModelRouter.makeSignUpView()
    }
}

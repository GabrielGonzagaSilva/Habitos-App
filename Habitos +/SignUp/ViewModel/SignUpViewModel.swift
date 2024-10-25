//
//  SingUpViewModel.swift
//  Habitos +
//
//  Created by Gabriel Gonzaga  on 21/10/24.
//

import SwiftUI

enum SignUpUiState{
    case none
    case loading
    case goToHomeScreen
    case error(String)
}

class SignUpViewModel: ObservableObject {
    
    @Published var uiState: SignUpUiState = .none
    
    @Published var fullName = ""
    @Published var email = ""
    @Published var password = ""
    @Published var document = ""
    @Published var phone = ""
    @Published var birthday = ""
    @Published var gender: Gender = .nonBinary
    
    
    func HomeView() -> some View {
        return SignUpViewModelRouter.makeHomeView()
    }
    
    func FinalizarCadastro() {
        self.uiState = .loading
        
        if [email, password, fullName, document, phone, birthday].allSatisfy({ !$0.isEmpty }) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.uiState = .goToHomeScreen
            }
        } else {
            self.uiState = .error("Preencha todos os campos")
        }
    }
}

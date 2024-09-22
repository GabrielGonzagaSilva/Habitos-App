//
//  SplashViewModel.swift
//  Habitos +
//
//  Created by Gabriel Gonzaga  on 21/09/24.
//

import SwiftUI

class SplashViewModel: ObservableObject { // Objeto observavel por uma view
    @Published var uiState: SplashUIState = .loading
    
    func onAppear() {
        // Faz algo assincrono e muda o estado da uiState
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            // Aqui é chamado depois de 2 segundos
            
            self.uiState = .goToHomeScreen
        }
    }
}

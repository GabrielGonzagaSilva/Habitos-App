//
//  SplashViewModel.swift
//  Habitos +
//
//  Created by Gabriel Gonzaga  on 21/09/24.
//

import SwiftUI

class SplashViewModel: ObservableObject { 
    @Published var uiState: SplashUIState = .loading
    
    func onAppear() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            self.uiState = .goToLogInScreen
        }
    }
}


extension SplashViewModel {
    
    // Este método faz uma chamada do SingInView atraves do router.
    func logInView() -> some View { // Func que retorna a view
        return SplashViewModelRouter.makeLogInView() // Chamada dentro do SplashViewModelRouter
    }
    
}

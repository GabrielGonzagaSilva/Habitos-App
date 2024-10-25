//
//  SplashViewModel.swift
//  Habitos +
//
//  Created by Gabriel Gonzaga  on 21/09/24.
//

import SwiftUI

enum SplashUIState{
    case loading
    case goToLogInScreen
    case goToHomeScreen
    case error(String)
}

class SplashViewModel: ObservableObject { 
    @Published var uiState: SplashUIState = .loading
    
    func onAppear() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            self.uiState = .goToLogInScreen
        }
    }
}

extension SplashViewModel {
    
    func logInView() -> some View {
        return SplashViewModelRouter.makeLogInView()
    }
    
}

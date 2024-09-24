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
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            self.uiState = .goToSingInScreen
        }
    }
}

extension SplashViewModel {
    func singInView() -> some View {
        return SplashViewModelRouter.makeSingINView()
    }
}

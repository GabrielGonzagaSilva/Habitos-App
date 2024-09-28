//
//  SplashViewRouter.swift
//  Habitos +
//
//  Created by Gabriel Gonzaga  on 23/09/24.
//

import SwiftUI



// ------ Cria a rota de conexão entre SingInView e SplashView ------
// Usamos enum pois não ha a necessidade de uma instancia.
// É apenas uma referencia para chamar uma função.
enum SplashViewModelRouter{
    
    // Usamos uma Static func pois não possuimos uma instancia, essa func é direta do enum.
    static func makeLogInView() -> some View { // Retorna uma View
        let viewModel = LogInViewModel() // ViewModel recebe a instancia do SingInViewModel
        return LogInView(viewModel: viewModel) // Reorna o SingInView + viewModel
    }
    
}

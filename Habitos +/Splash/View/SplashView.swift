//
//  SplashView.swift
//  Habitos +
//
//  Created by Gabriel Gonzaga  on 21/09/24.
//

import SwiftUI

struct SplashView: View {
    @ObservedObject var viewModel: SplashViewModel //Objeto observavado
    var body: some View {
        Group{
            switch viewModel.uiState {
            case .loading:
                loadingView()
            case .goToSingInScreen:
                //Text("Carregar tela de LogIn")
                viewModel.singInView()
            case .goToHomeScreen:
                Text("Carregar tela principal")
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            case .error(let msg):
                loadingView(error: msg)
            }
        }.onAppear(perform: viewModel.onAppear)
    }
}
#Preview {
        SplashView(viewModel: SplashViewModel())
}
extension SplashView{
    func loadingView(error: String? = nil) -> some View {
        ZStack{
            Image("logo")
                .resizable()
                .scaledToFit()
                .padding(75)
                .background(Color.white)
                .ignoresSafeArea()
            
            if let error = error{
                Text("")
                    .alert(isPresented: .constant(true)) {
                        Alert(
                            title: Text("Habitos +"),
                            message: Text(error),
                            dismissButton: .default(Text("Ok")){
                        })
                    }
            }
        }
    }
}

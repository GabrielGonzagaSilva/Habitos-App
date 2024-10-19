//
//  LogInView.swift
//  Habitos +
//
//  Created by Gabriel Gonzaga  on 25/09/24.
//

import SwiftUI

struct LogInView: View {
    @StateObject var viewModel: LogInViewModel
    
    @State var navigationHidden = true
    
    var body: some View{
        ZStack{ //CRIA UMA NOVA "CAMADA"
            if case LogInUIState.goToHomeScreen = viewModel.uiState{
                viewModel.HomeView() // ENVIA PARA A TELA DE HOME
            } else {
                NavigationView { // VAI PARA A TELA DE LOGIN PADRAO
                    ScrollView(showsIndicators: false){
                        VStack(alignment: .center, spacing: 20){
                            
                            Spacer(minLength: 46)
                            
                            VStack (alignment: .center, spacing: 8) {
                                
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .padding(.horizontal, 70)
                                    .padding(.vertical,-20)
                                
                                
                                Text("Login")
                                    .foregroundColor(.black)
                                    .font(Font.system(.title2).bold())
                                    .padding(10)
                                
                                numberField
                                
                                passwordField
                                
                                enterButton
                                
                                register
                                
                            }
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                            .padding(.horizontal,32)
                            .background(Color.white)
                            .navigationBarTitle("Login", displayMode: .inline)
                            .navigationBarHidden(navigationHidden)
                        }
                    }
                }
                if case LogInUIState.error(let value) = viewModel.uiState {
                    Text("")
                        .alert(isPresented: .constant(true)) {
                            Alert(
                                title: Text("Habitos +"),
                                message: Text(value),
                                dismissButton: .default(Text("Ok")){
                            })
                        }
                }
            }
        }
    }
}



extension LogInView{
    var numberField: some View {
        TextField("E-mail", text: $viewModel.email)
            .border(.black)
            .controlSize(.regular)
            .padding(.vertical,5)
            .textFieldStyle(.roundedBorder)
            .disableAutocorrection(true)
    }
}


extension LogInView{
    var passwordField: some View {
        SecureField("Password", text: $viewModel.password)
            .border(.black)
            .controlSize(.regular)
            .padding(.vertical,5)
            .textFieldStyle(.roundedBorder)
            .disableAutocorrection(true)
    }
}


extension LogInView {
    var enterButton: some View {
        Button(action: {
            // Chama a função login presente no ViewModel, simulando uma requisição ao servidor
            viewModel.login()
        }, label: {
            Text("Entrar")
                .font(.title3)
                .frame(maxWidth: .infinity)  // Removendo o token de placeholder
        })
        .buttonStyle(.borderedProminent)
        .controlSize(.regular)
        .tint(.black)
        .padding(.vertical, 1)
    }
}
extension LogInView {
    var register: some View {
        VStack{
            Text("Ainda não tem cadastro?")
                .foregroundColor(.gray)
                .padding(.top, 50)
            
            ZStack{
                
                NavigationLink(
                    destination: Text("Tela de cadastro"), // Encaminha para a tela desejada
                    tag: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/, // identificador essa tela em especifico
                    selection: $viewModel.action,
                    label: {EmptyView()}) // View vazia para eventos de acoes
                
                Button(action: {self.viewModel.action = 1}, label: {
                    Text("Cadastrar-se")
                        .font(.title3)
                        .frame(maxWidth: .infinity)
                })
                .buttonStyle(.borderedProminent)
                .controlSize(.regular)
                .tint(.black)
                .padding(.vertical,1)

            }
            }
        
    }
}

#Preview{
    LogInView(viewModel: LogInViewModel())
}

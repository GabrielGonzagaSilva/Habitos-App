//
//  SingUpView.swift
//  Habitos +
//
//  Created by Gabriel Gonzaga  on 21/10/24.
//

import SwiftUI

struct SignUpView: View {
    @StateObject var viewModel: SignUpViewModel
    var body: some View {
        ZStack{
            if case SignUpUiState.error(let value) = viewModel.uiState{
                Text("")
                    .alert(isPresented: .constant(true)) {
                        Alert(
                            title: Text("Habitos +"),
                            message: Text(value),
                            dismissButton: .default(Text("Ok")){
                        })
                    }
            }
            if case SignUpUiState.goToHomeScreen = viewModel.uiState{
                viewModel.HomeView()
                
            } else {
            ScrollView(showsIndicators : true){
                VStack (alignment: .center, spacing: 8) {
                    
                    Text("Cadastro")
                        .foregroundColor(.black)
                        .font(Font.system(.title2).bold())
                        .padding(10)
                    
                    Group{
                        nameField
                        birthdayField
                        
                        Group{
                            Text("Selecione seu gênero")
                                .padding(.top, 20)
                            genderField
                                .padding(.bottom, 20)
                        }
                        
                        documentField
                        phoneField
                        emailField
                        passwordField
                    }
                    saveButton
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                .padding(.horizontal,32)
                .background(Color.white)
                Spacer()
            }
      }
    }
  }
}



extension SignUpView{
    var emailField: some View {
        TextField("E-mail", text: $viewModel.email)
            .border(.black)
            .controlSize(.regular)
            .padding(.vertical,5)
            .textFieldStyle(.roundedBorder)
            .disableAutocorrection(true)
    }
}

extension SignUpView{
    var nameField: some View {
        TextField("Nome completo", text: $viewModel.fullName)
            .border(.black)
            .controlSize(.regular)
            .padding(.vertical,5)
            .textFieldStyle(.roundedBorder)
            .disableAutocorrection(true)
    }
}

extension SignUpView{
    var birthdayField: some View {
        TextField("Data de nascimento", text: $viewModel.birthday)
            .border(.black)
            .controlSize(.regular)
            .padding(.vertical,5)
            .textFieldStyle(.roundedBorder)
            .disableAutocorrection(true)
    }
}

extension SignUpView{
    var documentField: some View {
        TextField("CPF", text: $viewModel.document)
            .border(.black)
            .controlSize(.regular)
            .padding(.vertical,5)
            .textFieldStyle(.roundedBorder)
            .disableAutocorrection(true)
    }
}

extension SignUpView{
    var genderField: some View {
        Picker("Gênero", selection: $viewModel.gender) {
           ForEach(Gender.allCases, id: \.self){ value in
                Text(value.rawValue).tag(value)
            }
        }
    }
}


extension SignUpView{
    var phoneField: some View {
        TextField("Telefone", text: $viewModel.phone)
            .border(.black)
            .controlSize(.regular)
            .padding(.vertical,5)
            .textFieldStyle(.roundedBorder)
            .disableAutocorrection(true)
    }
}

extension SignUpView{
    var passwordField: some View {
        SecureField("Senha", text: $viewModel.password)
            .border(.black)
            .controlSize(.regular)
            .padding(.vertical,5)
            .textFieldStyle(.roundedBorder)
            .disableAutocorrection(true)
    }
}

extension SignUpView {
    var saveButton: some View {
        Button(action: {
            viewModel.FinalizarCadastro()
        }, label: {
            Text("Finalizar cadastro")
                .font(.title3)
                .frame(maxWidth: .infinity)
        })
        .buttonStyle(.borderedProminent)
        .controlSize(.regular)
        .tint(.black)
        .padding(.vertical, 1)
        .padding(.top, 20)
    }
}

#Preview {
    SignUpView(viewModel: SignUpViewModel())
}



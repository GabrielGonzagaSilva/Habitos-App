//
//  LogInView.swift
//  Habitos +
//
//  Created by Gabriel Gonzaga  on 25/09/24.
//

import SwiftUI

struct LogInView: View {
    @ObservedObject var viewModel: LogInViewModel
    
    @State var email = ""
    @State var password = ""
    
    @State var navigationHidden = true
    
    @State var action: Int? = 0
    
    var body: some View{
        NavigationView {
            
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
    }
}



extension LogInView{
    var numberField: some View {
        TextField("", text: $email)
            .border(.black)
            .controlSize(.regular)
            .padding(.vertical,5)
    }
}


extension LogInView{
    var passwordField: some View {
        SecureField("", text: $password)
            .border(.black)
            .controlSize(.regular)
            .padding(.vertical,5)
    }
}

extension LogInView {
    var enterButton: some View {
        Button(action: {}, label: {
                    Text("Entrar")
                           .font(.title3)
                           .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                   })
                   .buttonStyle(.borderedProminent)
                   .controlSize(.regular)
                   .tint(.black)
                   .padding(.vertical,1)
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
                    selection: $action,
                    label: {EmptyView()}) // View vazia para eventos de acoes
                
                Button(action: {self.action = 1}, label: {
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

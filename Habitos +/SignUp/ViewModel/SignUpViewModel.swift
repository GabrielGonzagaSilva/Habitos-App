//
//  SingUpViewModel.swift
//  Habitos +
//
//  Created by Gabriel Gonzaga  on 21/10/24.
//

import SwiftUI

class SignUpViewModel: ObservableObject {
    @Published var fullName = ""
    @Published var email = ""
    @Published var password = ""
    @Published var document = ""
    @Published var phone = ""
    @Published var birthday = ""
    @Published var gender: Gender = .nonBinary
    
}

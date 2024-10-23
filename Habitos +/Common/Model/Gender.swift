//
//  Gender.swift
//  Habitos +
//
//  Created by Gabriel Gonzaga  on 22/10/24.
//

import Foundation

enum Gender: String, CaseIterable, Identifiable{
    case male = "Masculino"
    case female = "Femenino"
    case nonBinary = "Não binário"
    case preferNotToSay = "Prefiro não dizer"
    
    var id: String { self.rawValue }
}

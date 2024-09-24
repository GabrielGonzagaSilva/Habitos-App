//
//  SplashViewRouter.swift
//  Habitos +
//
//  Created by Gabriel Gonzaga  on 23/09/24.
//

import SwiftUI

enum SplashViewModelRouter{
    static func makeSingINView() -> some View {
        let viewModel = SingInVIewModel()
        return SingInView(viewModel: viewModel)
    }
}

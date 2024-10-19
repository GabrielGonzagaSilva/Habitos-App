//
//  HomeView.swift
//  Habitos +
//
//  Created by Gabriel Gonzaga  on 18/10/24.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack{
           
            Text("Home")
            
        }
        
    }
}








#Preview {
    HomeView(viewModel: HomeViewModel())
}

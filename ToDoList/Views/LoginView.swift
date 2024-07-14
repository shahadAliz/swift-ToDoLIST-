//
//  LoginView.swift
//  ToDoList
//
//  Created by شهد علي on 29/06/1445 AH.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        
      
        
        NavigationView {
            
            VStack{
                // Hdeader
                HeaderView(titel: "ToDoList", subtitel: "Get thing done", angle: 15, background: .pink)
               
                
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundColor(Color.red)
                    
                }
                
                Form {
                    TextField("Email Address",text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    SecureField("Password",text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(titel:"Log in" , background: .blue) {
                        viewModel.login()
                    }
                    
                    
                    .padding()
                    
                }
                offset(y: -50)
               
                
                //Create Account
                VStack{
                    Text("New around here?")
                   
                        //Show Registration
                    
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                
                .padding()
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

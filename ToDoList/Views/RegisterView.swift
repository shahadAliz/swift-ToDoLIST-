//
//  RegisterView.swift
//  ToDoList
//
//  Created by شهد علي on 29/06/1445 AH.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            // Hdeader
            HeaderView(titel: "Register", subtitel: "Start organizing todos", angle: -15, background: .orange)
            
            Form {
                TextField ("Full name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField ("Email addreses", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .autocorrectionDisabled()
                
                
                SecureField ("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(titel:"Create Account " , background: .green) {
                    // Attempt registretion
                }
                .padding()
            }
            offset(y: -50)
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

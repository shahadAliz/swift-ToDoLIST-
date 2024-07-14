//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by شهد علي on 01/07/1445 AH.
//

import Foundation
class LoginViewViewModel : ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){}
    
    func login (){
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else{
            return
        }
        print("Called")
        
    }
    func validate(){
        
    }
}

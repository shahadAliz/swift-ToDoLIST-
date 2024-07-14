//
//  TLButton.swift
//  ToDoList
//
//  Created by شهد علي on 03/07/1445 AH.
//

import SwiftUI

struct TLButton: View {
    let titel : String
    let background : Color
    let action : () -> Void
    
    var body: some View {
        Button{
            // Action
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(titel)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
        
    }
}

#Preview {
    TLButton(titel: "Value", background: .pink){}
}

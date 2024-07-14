//
//  HeaderView.swift
//  ToDoList
//
//  Created by شهد علي on 01/07/1445 AH.
//

import SwiftUI

struct HeaderView: View {
    
    let titel : String
    let subtitel : String
    let angle : Double
    let background : Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
               
            
            VStack{
                Text(titel)
                    .font(.system(size: 50))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                Text(subtitel)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width * 3 , height: 350)
        .offset(y: -150)
        
     
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(titel: "Titel", subtitel: "Subtitle", angle: 15, background: .blue)
    }
}

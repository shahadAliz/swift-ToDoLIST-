//
//  ContentView.swift
//  ToDoList
//
//  Created by شهد علي on 29/06/1445 AH.
//

import SwiftUI



struct MainView: View {
    var body: some View {
        NavigationView {
          LoginView()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

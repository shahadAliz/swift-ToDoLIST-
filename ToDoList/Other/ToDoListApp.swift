//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by شهد علي on 29/06/1445 AH.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

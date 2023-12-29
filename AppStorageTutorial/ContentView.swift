//
//  ContentView.swift
//  AppStorageTutorial
//
//  Created by Ricardo de Agostini Neto on 22/12/23.
//

import SwiftUI


struct ContentView: View {
    
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        
        
        VStack(spacing: 20) {
            
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name = "Emily"
                currentUserName = name
                
            }
            
            
            
        }

    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  BPAppProtoypte
//
//  Created by Naina Subherwal on 7/26/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var createNewReading = false
    
    var body: some View {
            
        NavigationStack {
            
            VStack {
                
                Button {
                    
                    createNewReading = true
                    
                } label: {
                    
                    Text("Enter new blood pressure reading")
                        .font(.body)
                        .fontWeight(.medium)
                        .padding()
                        .foregroundColor(Color("Secondary Text"))
                        .background(Color("Secondary Background"))
                        .cornerRadius(20)
                        .padding()
                    
                }//button
                
            }//vstack
            
            .sheet(isPresented: $createNewReading, content: {
                
                EnterNewDataView()
                
            })//sheet
            
            .navigationTitle("Summary")
            
        }//navstack
        
    }//body
    
}//struct


#Preview {
    
    ContentView()
    
}//preview

//
//  BPAppProtoypteApp.swift
//  BPAppProtoypte
//
//  Created by Naina Subherwal on 7/26/25.
//

import SwiftUI
import SwiftData

@main
struct BPAppProtoypteApp: App {
    
    var body: some Scene {
        
        WindowGroup {
            
            ContentView()
            
        }
        .modelContainer(for: BPReading.self)
        
    }
    
}

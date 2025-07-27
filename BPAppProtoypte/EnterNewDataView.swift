//
//  EnterNewDataView.swift
//  BPAppProtoypte
//
//  Created by Naina Subherwal on 7/27/25.
//

import SwiftUI

struct EnterNewDataView: View {
    
    @State private var bpReading: [BPReading] = [
        
        BPReading(date: .now, time: .now, systolic: 118, diastolic: 24, pulse: 84)
        
    ]//@state
    
    var body: some View {
        
        List(bpReading, id: \.systolic) { friend in
            
        }//list
        
    }//body
    
}//struct

#Preview {
    
    EnterNewDataView()
    
}

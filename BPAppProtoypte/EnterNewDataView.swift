//
//  EnterNewDataView.swift
//  BPAppProtoypte
//
//  Created by Naina Subherwal on 7/27/25.
//

import SwiftUI

struct EnterNewDataView: View {
    
    @State private var newDate = Date.now
    @State private var newTime = Date.now
    @State private var newSystolic: Int? = nil
    @State private var newDiastolic: Int? = nil
    @State private var newPulse: Int? = nil
    
    var body: some View {
        
        VStack (alignment: .center, spacing: 20) {
            
            Text("New Blood Pressure")
                .font(.headline)
            
            DatePicker("Date", selection: $newDate, in: Date.distantPast...Date.now, displayedComponents: [.date])
            
            DatePicker("Time", selection: $newTime, displayedComponents: [.hourAndMinute])
            
            TextField("Systolic", value: $newSystolic, format: .number)
            
            TextField("Diastolic", value: $newDiastolic, format: .number)
            
            TextField("Pulse", value: $newPulse, format: .number)
            
        }//vstack
        
    }//body
    
}//struct

#Preview {
    
    EnterNewDataView()
    
}

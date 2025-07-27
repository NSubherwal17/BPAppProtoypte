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
        
        Text("New Blood Pressure")
            .font(.headline)
        
        VStack (alignment: .leading, spacing: 20) {
            
            DatePicker("Date", selection: $newDate, in: Date.distantPast...Date.now, displayedComponents: [.date])
                //.labelsHidden()
            
            Divider()
            
            DatePicker("Time", selection: $newTime, displayedComponents: [.hourAndMinute])
                //.labelsHidden()
            
            Divider()

            TextField("Systolic", value: $newSystolic, format: .number)
            
            Divider()
            
            TextField("Diastolic", value: $newDiastolic, format: .number)
            
            Divider()
            
            TextField("Pulse", value: $newPulse, format: .number)
            
        }//vstack
        .padding()
        .background(Color("Secondary Background"))
        .cornerRadius(20)
        .padding()
        
    }//body
    
}//struct

#Preview {
    
    EnterNewDataView()
    
}

//
//  EnterNewDataView.swift
//  BPAppProtoypte
//
//  Created by Naina Subherwal on 7/27/25.
//

import SwiftUI
import SwiftData

struct EnterNewDataView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss
    
    @State private var newDate = Date.now
    @State private var newTime = Date.now
    @State private var newSystolic: Int? = nil
    @State private var newDiastolic: Int? = nil
    @State private var newPulse: Int? = nil
    @State private var newMoodRating: Int? = nil
    @State private var newNote: String = ""
    
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
                VStack {
                    
                    VStack (alignment: .leading, spacing: 20) {
                        
                        DatePicker("Date", selection: $newDate, in: Date.distantPast...Date.now, displayedComponents: [.date])
                            .padding(.horizontal)
                        //.labelsHidden()
                        
                        Divider()
                        
                        DatePicker("Time", selection: $newTime, displayedComponents: [.hourAndMinute])
                            .padding(.horizontal)
                        //.labelsHidden()
                        
                        Divider()
                        
                        HStack {
                            Text("Systolic")
                            Spacer()
                            TextField("Enter Systolic", value: $newSystolic, format: .number)
                                .multilineTextAlignment(.trailing)
                        }
                        .padding(.horizontal)
                        
                        Divider()
                        
                        HStack {
                            Text("Diastolic")
                            Spacer()
                            TextField("Enter Diastolic", value: $newDiastolic, format: .number)
                                .multilineTextAlignment(.trailing)
                        }
                        .padding(.horizontal)
                        
                        Divider()
                        
                        HStack {
                            Text("Pulse")
                            Spacer()
                            TextField("Enter Pulse", value: $newPulse, format: .number)
                                .multilineTextAlignment(.trailing)
                        }
                        .padding(.horizontal)
                        
                        
                    }//vstack
                    .padding()
                    .background(Color("Secondary Background"))
                    .cornerRadius(20)
                    .padding()
                    
                    VStack(alignment: .leading) {
                        
                        Text("How are you feeling?")
                            .padding()
                        
                        HStack {
                            
                            Button {
                                
                                newMoodRating = 1
                                
                            } label: {
                                
                                Image("face1")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(newMoodRating == 1 || newMoodRating == nil ? 1.0 : 0.3)
                                
                            }//button
                            
                            Button {
                                
                                newMoodRating = 2
                                
                            } label: {
                                
                                Image("face2")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(newMoodRating == 2 || newMoodRating == nil ? 1.0 : 0.3)
                                
                            }//button
                            
                            Button {
                                
                                newMoodRating = 3
                                
                            } label: {
                                
                                Image("face3")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(newMoodRating == 3 || newMoodRating == nil ? 1.0 : 0.3)
                                
                            }//button
                            
                            Button {
                                
                                newMoodRating = 4
                                
                            } label: {
                                
                                Image("face4")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(newMoodRating == 4 || newMoodRating == nil ? 1.0 : 0.3)
                                
                            }//button
                            
                            Button {
                                
                                newMoodRating = 5
                                
                            } label: {
                                
                                Image("face5")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(newMoodRating == 5 || newMoodRating == nil ? 1.0 : 0.3)
                                
                            }//button
                            
                            Button {
                                
                                newMoodRating = 6
                                
                            } label: {
                                
                                Image("face6")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(newMoodRating == 6 || newMoodRating == nil ? 1.0 : 0.3)
                                
                            }//button
                            
                        }
                        .padding(.horizontal)//hstack
                        
                    }//vstack
                    .padding()
                    .background(Color("Secondary Background"))
                    .cornerRadius(20)
                    .padding()
                    
                    VStack(alignment: .leading) {
                        
                        Text("Notes (optional)")
                            .padding([.top, .leading, .trailing])
                        
                        ZStack {
                            
                            TextEditor(text: $newNote)
                                .padding([.leading, .bottom, .trailing])
                                .frame(height: 150)
                                .colorMultiply(Color("Secondary Background"))
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color("veryLightGray")))
                                .padding([.leading, .bottom, .trailing])
                            
                            if newNote.isEmpty {
                                
                                Text("Write your note here...")
                                    .foregroundColor(Color("veryLightGray"))
                                    .padding(.bottom, 125)
                                    .padding(.trailing, 100)
                                
                                
                            }//if statement
                            
                        }//zstack
                        
                    }//vstack
                    .padding()
                    .background(Color("Secondary Background"))
                    .cornerRadius(20)
                    .padding()
                    
                }//vstack
                
            }//scrollview
            
            VStack {
                
                Button("Save") {
                    
                    saveReading()
                    
                }
                
                .font(.body)
                .fontWeight(.medium)
                .padding()
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .background(isFormValid ? Color.blue : Color("veryLightGray"))
                .cornerRadius(10)
                .padding(.horizontal)
                .disabled(!isFormValid)
                
            }
            .navigationTitle("New Reading")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                
                ToolbarItem(placement: .navigationBarLeading) {
                    
                    Button("Cancel") {
                        
                        dismiss()
                        
                    }//button
                    
                }//toolbaritem
                
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    
//                    Button("Save") {
//                        
//                        saveReading()
//                        
//                    }//button
//                    .disabled(!isFormValid)
//                    
//                }//toolbaritem
                
            }//toolbar
            .alert("Error", isPresented: $showAlert) {
                
                Button("OK") { }
                
            } message: {
                
                Text(alertMessage)
                
            }//alert
            
        }//navstack
        
    }//body
    
    private var isFormValid: Bool {
        
        return newSystolic != nil && newDiastolic != nil && newPulse != nil && newMoodRating != nil
        
    }//var
    
    private func saveReading() {
        
        guard let systolic = newSystolic,
            let diastolic = newDiastolic,
            let pulse = newPulse
            //let moodRating = newMoodRating
        else {
            
            alertMessage = "Please fill in all required fields (Systolic, Diastolic, and Pulse)"
            showAlert = true
            return
            
        }//else statement
        
        guard newMoodRating != nil
        else {
            
            alertMessage = "Please select a mood rating"
            showAlert = true
            return
            
        }//else statement
        
        if systolic < 70 || systolic > 200 {
            
            alertMessage = "Systolic pressure should be between 70 and 200"
            showAlert = true
            return
            
        }//if statement
        
        if diastolic < 40 || diastolic > 130 {
            
            alertMessage = "Diastolic pressure should be between 40 and 130"
            showAlert = true
            return
            
        }//if statement
        
        if pulse < 40 || pulse > 200 {
            
            alertMessage = "Pulse should be between 40 and 200"
            showAlert = true
            return
            
        }//if statement
        
        let newReading = BPReading(
            
            date: newDate,
            time: newTime,
            systolic: newSystolic!,
            diastolic: newDiastolic!,
            pulse: newPulse!,
            moodRating: newMoodRating!,
            note: newNote
            
        )//let
        
        modelContext.insert(newReading)
        
        do {
            
            try modelContext.save()
            dismiss()
            
        } catch {
            
            alertMessage = "Failed to save reading: \(error.localizedDescription)"
            showAlert = true
            
        }//do
        
    }//func
    
}//struct

#Preview {
    
    EnterNewDataView()
        .modelContainer(for: BPReading.self, inMemory: true)
    
}

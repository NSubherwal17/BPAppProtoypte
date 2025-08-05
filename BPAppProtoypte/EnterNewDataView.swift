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
    
    @State private var moodRating: Int? = nil
    
    @State private var inputNote: String = ""
    
    var body: some View {
        
        ScrollView {
            
            Text("New Blood Pressure")
                .font(.headline)
                .padding()
            
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
                    
                    TextField("Systolic", value: $newSystolic, format: .number)
                        .padding(.horizontal)
                    
                    Divider()
                    
                    TextField("Diastolic", value: $newDiastolic, format: .number)
                        .padding(.horizontal)
                    
                    Divider()
                    
                    TextField("Pulse", value: $newPulse, format: .number)
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
                            
                            moodRating = 1
                            
                        } label: {
                            
                            Image("face1")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.gray)))
                            
                            
                        }//button
                        
                        Button {
                            
                            moodRating = 2
                            
                        } label: {
                            
                            Image("face2")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding(.bottom, 4.0)
                            
                        }//button
                        
                        Button {
                            
                            moodRating = 3
                            
                        } label: {
                            
                            Image("face3")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                            
                        }//button
                        
                        Button {
                            
                            moodRating = 4
                            
                        } label: {
                            
                            Image("face4")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                            
                        }//button
                        
                        Button {
                            
                            moodRating = 5
                            
                        } label: {
                            
                            Image("face5")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                            
                        }//button
                        
                    }
                    .padding(.horizontal)//hstack
                    
                }//vstack
                .padding()
                .background(Color("Secondary Background"))
                .cornerRadius(20)
                .padding()
                
                VStack(alignment: .leading) {
                    
                    Text("Notes")
                        .padding([.top, .leading, .trailing])
                    
                    ZStack {
                        
                        TextEditor(text: $inputNote)
                            .padding([.leading, .bottom, .trailing])
                            .frame(height: 150)
                            .colorMultiply(Color("Secondary Background"))
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color("lightGray")))
                            .padding([.leading, .bottom, .trailing])
                        
                        if inputNote.isEmpty {
                        
                        Text("Write your note here...")
                                .foregroundColor(Color(.lightGray))
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
        
    }//body
    
}//struct

#Preview {
    
    EnterNewDataView()
    
}

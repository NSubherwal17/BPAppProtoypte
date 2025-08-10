//
//  BPReading.swift
//  BPAppProtoypte
//
//  Created by Naina Subherwal on 7/27/25.
//

import Foundation
import SwiftData

@Model
class BPReading {
    
    var date: Date
    var time: Date
    var systolic: Int
    var diastolic: Int
    var pulse: Int
    var moodRating: Int?
    var note: String
    
    init(date: Date, time: Date, systolic: Int, diastolic: Int, pulse: Int, moodRating: Int?, note: String = "") {
        
        self.date = date
        self.time = time
        self.systolic = systolic
        self.diastolic = diastolic
        self.pulse = pulse
        self.moodRating = moodRating
        self.note = note
        
    }//init
    
}//class

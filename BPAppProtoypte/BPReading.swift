//
//  BPReading.swift
//  BPAppProtoypte
//
//  Created by Naina Subherwal on 7/27/25.
//

import Foundation

class BPReading {
    
    var date: Date
    var time: Date
    var systolic: Int
    var diastolic: Int
    var pulse: Int
    
    init(date: Date, time: Date, systolic: Int, diastolic: Int, pulse: Int) {
        
        self.date = date
        self.time = time
        self.systolic = systolic
        self.diastolic = diastolic
        self.pulse = pulse
        
    }//init
    
}//class

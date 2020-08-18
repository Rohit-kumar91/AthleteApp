//
//  AthleteModel.swift
//  AthleteApp
//
//  Created by Rohit Prajapati on 18/08/20.
//  Copyright © 2020 Rohit Prajapati. All rights reserved.
//

import Foundation

struct Athlete {
    var firstName: String
    var lastName: String
    var position: String
    var time: Date
    
    static func getSortedArray() -> [Athlete] {
        return athleteData.sorted { $0.position.lowercased() < $1.position.lowercased() }
    }
    
    static func getSortedDateArray() -> [Athlete] {
        return athleteData.sorted { $0.time < $1.time }
    }
    
    static func getFilterbyLastname() -> [Athlete] {
        return athleteData.sorted { $0.time > $1.time }.filter ({$0.lastName.first?.lowercased() == "j"})
    }
}




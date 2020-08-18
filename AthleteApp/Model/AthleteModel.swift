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
    var image: String
    var notes: String
    
    static func getSortedArray() -> [Athlete] {
        return athleteData.sorted { $0.position.lowercased() < $1.position.lowercased() }
    }
}









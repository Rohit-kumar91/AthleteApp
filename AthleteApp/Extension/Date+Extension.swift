//
//  DateExtension.swift
//  AthleteApp
//
//  Created by Rohit Prajapati on 18/08/20.
//  Copyright © 2020 Rohit Prajapati. All rights reserved.
//

import Foundation

extension Date {
    init(_ dateString:String) {
        let dateStringFormatter = DateFormatter()
        dateStringFormatter.dateFormat = "MM-dd-yyyy hh:mm a"
        dateStringFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX") as Locale
        let date = dateStringFormatter.date(from: dateString)!
        self.init(timeInterval:0, since:date)
    }
}

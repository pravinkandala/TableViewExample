//
//  Course.swift
//  TableViewExample
//
//  Created by Pravin Kandala on 10/7/15.
//  Copyright (c) 2015 Pravin Kandala. All rights reserved.
//

import Foundation

class Course{
    var courseNumber = ""
    var courseName = ""
    var creditHours = 0
    var maxEnrollment = 0
    
    init(courseNumber: String, courseName: String, creditHours:Int, maxEnrollment
        : Int){
            self.courseNumber = courseNumber
            self.courseName = courseName
            self.creditHours   = creditHours
            self.maxEnrollment = maxEnrollment
    }
    
}
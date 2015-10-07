//
//  DetailViewController.swift
//  TableViewExample
//
//  Created by Pravin Kandala on 10/7/15.
//  Copyright (c) 2015 Pravin Kandala. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

  

    @IBOutlet weak var num: UILabel!
    
    @IBOutlet weak var name: UILabel!

    @IBOutlet weak var hours: UILabel!
    
    @IBOutlet weak var maxno: UILabel!
    
    var detailItem: Course? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: Course = self.detailItem {
//            if let label = self.detailDescriptionLabel {
//                label.text = detail.courseNumber
//            }
            
            if let label = self.num {
                label.text = detail.courseNumber
            }
            
            if let label = self.name {
                label.text = detail.courseName
            }
            if let label = self.hours {
                let c = detail.creditHours.description
                let d = "Hours = "
                
                label.text = d + c
            }
            
            if let label = self.maxno {
                
                let a = "Max Enrollment = "
                let b = detail.maxEnrollment.description
                label.text = a+b
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  DetailViewController.swift
//  TabViewExample
//
//  Created by Abraham Rodriguez on 10/7/15.
//  Copyright (c) 2015 Abraham Rodriguez. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var CourseNum: UILabel!
    @IBOutlet weak var CourseName: UILabel!
    @IBOutlet weak var CreditHours: UILabel!
    @IBOutlet weak var MaxEnroll: UILabel!
    
    var detailItem: course? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
//        if let detail: course = self.detailItem {
//            if let courseNumber = self.CourseNum {
//                courseNumber.text = detail.courseNumber
//                if let courseName = self.CourseName {
//                    courseName.text = detail.courseName}
//                if let credithours = self.CreditHours {
//                    credithours.text = Int (detail.creditHours).description}
//                if let courseNumber = self.MaxEnroll {
//                    courseNumber.text = Int (detail.maxEnrollment).description}
//            }}
        
//        if let detail: course = self.detailItem {
//            if let courseName = self.CourseName {
//                courseName.text = detail.courseName}}
//        
//        if let detail: course = self.detailItem {
//            if let credithours = self.CreditHours {
//                credithours.text = Int (detail.creditHours).description}}
////
//        if let detail: course = self.detailItem {
//            if let courseNumber = self.MaxEnroll {
//                courseNumber.text = Int (detail.maxEnrollment).description}}
        
//                CourseName.text = detail.courseName
//                label.text = detail.courseNumber
//                label.text = detail.courseNumber
                
            
        
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


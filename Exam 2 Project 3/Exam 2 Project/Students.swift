//
//  Students.swift
//  
//
//  Created by Abe Rodriguez on 12/9/15.
//
//

import Foundation
import CoreData

class Students: NSManagedObject {

    @NSManaged var firstName: String
    @NSManaged var gpa: NSNumber
    @NSManaged var lastName: String
    @NSManaged var courses: NSSet

}

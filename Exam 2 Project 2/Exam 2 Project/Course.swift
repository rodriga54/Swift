//
//  Course.swift
//  
//
//  Created by Abe Rodriguez on 12/9/15.
//
//

import Foundation
import CoreData

class Course: NSManagedObject {

    @NSManaged var courseNumber: String
    @NSManaged var name: String
    @NSManaged var students: NSSet

}

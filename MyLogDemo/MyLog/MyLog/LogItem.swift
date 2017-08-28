//
//  LogItems.swift
//  
//
//  Created by Abe Rodriguez on 11/13/15.
//
//

import Foundation
import CoreData

class LogItem: NSManagedObject {

    @NSManaged var title: String
    @NSManaged var itemText: String
    
    
    class func createInManagedObjectContext(moc: NSManagedObjectContext, title: String, text: String) -> LogItem {
        let newItem = NSEntityDescription.insertNewObjectForEntityForName("LogItem", inManagedObjectContext: moc) as! LogItem
        newItem.title = title
        newItem.itemText = text
        
        return newItem
    }

}

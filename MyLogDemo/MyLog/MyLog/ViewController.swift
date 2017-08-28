//
//  ViewController.swift
//  MyLog
//
//  Created by Abe Rodriguez on 11/13/15.
//  Copyright (c) 2015 ___AbeRodriguez___. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource {
    
    
    var logItems = [LogItem]()
    // Retreive the managedObjectContext from AppDelegate
    let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    // Create the table view as soon as this class loads
    var logTableView = UITableView(frame: CGRectZero, style: .Plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        fetchLog()
        
        // Use optional binding to confirm the managedObjectContext
        if let moc = self.managedObjectContext {
            
            // Create some dummy data to work with
            var items = [
                ("Best Animal", "Dog"),
                ("Best Language","Swift"),
                ("Worst Animal","Cthulu"),
                ("Worst Language","LOLCODE")
            ]
            
            // Loop through, creating items
            for (itemTitle, itemText) in items {
                // Create an individual item
                LogItem.createInManagedObjectContext(moc,
                    title: itemTitle, text: itemText)
            }
            
            
            // Now that the view loaded, we have a frame for the view, which will be (0,0,screen width, screen height)
            // This is a good size for the table view as well, so let's use that
            // The only adjust we'll make is to move it down by 20 pixels, and reduce the size by 20 pixels
            // in order to account for the status bar
            
            // Store the full frame in a temporary variable
            var viewFrame = self.view.frame
            
            // Adjust it down by 20 points
            viewFrame.origin.y += 20
            
            // Reduce the total height by 20 points
            viewFrame.size.height -= 20
            
            // Set the logTableview's frame to equal our temporary variable with the full size of the view
            // adjusted to account for the status bar height
            logTableView.frame = viewFrame
            
            // Add the table view to this view controller's view
            self.view.addSubview(logTableView)
            
            // Here, we tell the table view that we intend to use a cell we're going to call "LogCell"
            // This will be associated with the standard UITableViewCell class for now
            logTableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "LogCell")
            
            // This tells the table view that it should get it's data from this class, ViewController
            logTableView.dataSource = self
            
        }
    }
    
    // MARK: UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return logItems.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("LogCell") as! UITableViewCell
        let logItem = logItems[indexPath.row]
        
        cell.textLabel?.text = logItem.title
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func fetchLog() {
        let fetchRequest = NSFetchRequest(entityName: "LogItem")
        if let fetchResults = managedObjectContext!.executeFetchRequest(fetchRequest, error: nil) as? [LogItem] {
            logItems = fetchResults
        }
    
    }
}

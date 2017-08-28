//
//  DetailViewController.swift
//  Assign3.1
//
//  Created by Abe Rodriguez on 11/6/15.
//  Copyright (c) 2015 ___AbeRodriguez___. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var numPos: UILabel!
    @IBOutlet weak var Bats: UILabel!
    @IBOutlet weak var Height: UILabel!
    @IBOutlet weak var Weight: UILabel!
    @IBOutlet weak var DOB: UILabel!
    @IBOutlet weak var SoxLogo: UIImageView!
    @IBOutlet weak var detailDescriptionLabel: UILabel!


    var detailItem: Roster? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: Roster = self.detailItem {
            if let Name = self.fullName {
                Name.text = "\(detail.lName), \(detail.fName)"
            }
        }
        if let detail: Roster = self.detailItem {
            if let Name = self.numPos {
                Name.text = "\(detail.Number) | \(detail.position)"
            }
        }
        if let detail: Roster = self.detailItem {
            if let Name = self.Bats {
                Name.text = "\(detail.bats) / \(detail.throws)"
            }
        }
        if let detail: Roster = self.detailItem {
            if let Name = self.Height {
                Name.text = detail.height
            }
        }
        if let detail: Roster = self.detailItem {
            if let Name = self.Weight {
                Name.text = "\(detail.weight) lbs."
            }
        }
        if let detail: Roster = self.detailItem {
            if let Name = self.DOB {
                Name.text = detail.DOB
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


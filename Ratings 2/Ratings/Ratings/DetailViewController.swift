//
//  DetailViewController.swift
//  Ratings
//
//  Created by Abe Rodriguez on 10/23/15.
//  Copyright (c) 2015 ___AbeRodriguez___. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    var detailItem: Player? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: Player = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.name
            }
        }
        if let detail: Player = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = toString(detail.rating)
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


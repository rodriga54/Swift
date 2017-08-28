//
//  MassViewController.swift
//  Assign2
//
//  Created by Abe Rodriguez on 10/7/15.
//  Copyright (c) 2015 ___AbeRodriguez___. All rights reserved.
//

import UIKit

class MassViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var segmenter: UISegmentedControl!
    @IBOutlet weak var outputlabel: UILabel!
    @IBOutlet weak var inputtext: UITextField!
    
    var mass : Float  =  2.2046

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //
    // segmenter function will load the detials and conversion per each segment selected.
    //
    
    @IBAction func segmentchange(sender: AnyObject) {
       // inputtext.description = Double(sender.description
        if segmenter.selectedSegmentIndex == 0{
            label1.text = "Mass in Pounds"
            label2.text = "Mass in Kilograms"
            clearlabel()
        }
        if segmenter.selectedSegmentIndex == 1{
            label1.text = "Mass in Kilograms"
            label2.text = "Mass in Pounds"
            clearlabel()
        }
    }
    
    //
    // The convert function will convert the input data from lbs to kgs and vice versa.
    //
    
    @IBAction func convert(sender: AnyObject) {
        
        var numberFormatter = NSNumberFormatter()
        
        if segmenter.selectedSegmentIndex == 0{
        numberFormatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
        
        if let number = numberFormatter.numberFromString(inputtext.text!) {
            var output =   Float(number)
                output = output / mass
            
            outputlabel.text = "\(output)"
        }
        else {
            let alert = UIAlertView(title: "Error", message: "Please enter a number", delegate: nil, cancelButtonTitle: "OK")
            alert.show()
            clearlabel()
            }
        }
        
        if segmenter.selectedSegmentIndex == 1{
        numberFormatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
        
        if let number = numberFormatter.numberFromString(inputtext.text!) {
            var output =   Float(number)
            output = output * mass
            
            outputlabel.text =  "\(output)"
        }
        
        else {
            let alert = UIAlertView(title: "Error", message: "Please enter a number", delegate: nil, cancelButtonTitle: "OK")
            alert.show()
            clearlabel()
        }
        }
    }
    
    //
    // The clear function will call function clearlabel() to clear all labels.
    //

    @IBAction func clear(sender: AnyObject) {
        clearlabel()
        }
    
    //
    // The clearlabel function will clear all input and output labels.
    //

    func clearlabel(){
        inputtext.text = ""
        outputlabel.text = "0"
    }
}



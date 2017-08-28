//
//  TempViewController.swift
//  Assign2
//
//  Created by Abe Rodriguez on 10/7/15.
//  Copyright (c) 2015 ___AbeRodriguez___. All rights reserved.
//

import UIKit

//
// degreelist class loads the 2 arrays with degree values.
//

class degreelist {
    
    func fahren() -> [String]{
        var Fahrenheit = [String]()
        var degree = "\u{00B0}F"
        var number = 0
    
        for number in -129...124{
                Fahrenheit.append("\(number)\(degree)")
        }
        return Fahrenheit
    }
        
    func cels() -> [String]{
        
        var celsius = [String]()
        var degree = "\u{00B0}C"
        var number2 = 0
    
        for number2 in -90...57{
            celsius.append("\(number2)\(degree)")
        }
        return celsius
    }
}

//
// The TempViewController class
//

class TempViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var segmenter: UISegmentedControl!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var outputlabel: UILabel!

    var Fahrenheit = [String]()
    var celsius = [String]()
    var degreeF = "\u{00B0}F"
    var degreeC = "\u{00B0}C"
    var number = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Pre loads the defualt views for the first segmenter
        Fahrenheit = degreelist().fahren()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //
    // MARK: UIPickerViewDataSource methods.
    //
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //
    // The pickerView
    //
    func pickerView(pickerView: UIPickerView,
        numberOfRowsInComponent component: Int) -> Int {
        if (component == 0) {
            return Fahrenheit.count
        }else{
            return celsius.count
            }
    }
    
    //
    // MARK: UIPickerViewDelegate methods.
    //
    
    func pickerView(pickerView:UIPickerView,
        titleForRow row: Int,
        forComponent component: Int) -> String? {
            
            if segmenter.selectedSegmentIndex == 0 {
                return "\(Fahrenheit[row])"
            } else {
                return "\(celsius[row])"
            }
    }
    
    //
    // the pickerView function converts fehrenheit to Celsius and vice versa.
    //
    
    func pickerView(pickerView: UIPickerView,
        didSelectRow row: Int,
        inComponent component: Int) {
            var numberFormatter = NSNumberFormatter()
            
            if segmenter.selectedSegmentIndex == 0{
                
                var newint = Fahrenheit[row]
                let range = (newint.endIndex.advancedBy(-2))

                if let number = numberFormatter.numberFromString(newint) {
                    var output =   Int(number)
                    output = (output - 32) * 5/9
                    
                    outputlabel.text = "\(output)\(degreeC)"
                }
            }
            else {
                let newint = celsius[row]
                _ = newint.endIndex.advancedBy( -2)
                
                print("\(newint)")
                if let number = numberFormatter.numberFromString(newint) {
                    var output =   Int(number)
                    output = output * 9/5 + 32
                    
                    outputlabel.text = "\(output)\(degreeF)"
            }
        }

    }
    
    //
    // The Newchanger function reloads the values of picker based oon the selection made/
    //
    
    @IBAction func Newchanger(sender: UISegmentedControl) {
        
        _ = NSNumberFormatter()
        
        if segmenter.selectedSegmentIndex == 0{
            ///self.segchanger(segmenter)

            Fahrenheit = degreelist().fahren()
            pickerView.reloadAllComponents()
        }
        
        if segmenter.selectedSegmentIndex == 1{
            //self.segchanger(segmenter)
         
            celsius = degreelist().cels()
            pickerView.reloadAllComponents()
        }
    }
}



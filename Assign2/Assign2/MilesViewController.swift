//
//  MilesViewController.swift
//  
//
//  Created by Abe Rodriguez on 10/19/15.
//
//

import UIKit

class MilesViewController: UIViewController {

  
    @IBOutlet weak var segmenter: UISegmentedControl!
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var inputtext: UITextField!
    @IBOutlet weak var outputlabel: UILabel!
    
    var dist : Float  =  0.62137
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //
    // the segchanger function loads labels with input info.
    //
    
    @IBAction func segchanger(sender: UISegmentedControl) {
        if segmenter.selectedSegmentIndex == 0{
            label1.text = "Distance in Miles"
            label2.text = "Distance in Kilometers"
            clearlabel()
        }
        if segmenter.selectedSegmentIndex == 1 {
            label1.text = "Distance in Kilometers"
            label2.text = "Distance in Miles"
            clearlabel()
        }
    }
    
    //
    // The convert button computes miles to kilometers and vice versa.
    //
    
    @IBAction func convert(sender: AnyObject) {
        var numberFormatter = NSNumberFormatter()
                if segmenter.selectedSegmentIndex == 0{
                    numberFormatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
        
                    if let number = numberFormatter.numberFromString(inputtext.text!) {
                        var output =   Float(number)
                        output = output / dist
        
                        outputlabel.text = "\(output)"
                    }
                    else {
                        let alert = UIAlertView(title: "Error", message: "Please enter a number", delegate: nil, cancelButtonTitle: "OK")
                        alert.show()
                        clearlabel()
                    }}
        
                if segmenter.selectedSegmentIndex == 1{
                    numberFormatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
        
                    if let number = numberFormatter.numberFromString(inputtext.text!) {
                        var output =   Float(number)
                        output = output * dist
        
                        outputlabel.text =  "\(output)"
        
                    }
                        // error if a non-number is entered.
                    else {
                        let alert = UIAlertView(title: "Error", message: "Please enter a number", delegate: nil, cancelButtonTitle: "OK")
                        alert.show()
                        clearlabel()
                    }
                }
        
    }
    
    //
    // the clear button calls the clearlabel() function.
    //
    
    @IBAction func clear(sender: UIButton) {
        clearlabel()
    }
    
    // The clearlabel function clears the input and output label to "" & 0.
    func clearlabel(){
        inputtext.text = ""
        outputlabel.text = "0"
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

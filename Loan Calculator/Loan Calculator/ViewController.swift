//
//  ViewController.swift
//  Loan Calculator
//
//  Created by Abe Rodriguez on 3/20/16.
//  Copyright © 2016 ___AbeRodriguez___. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    let formatter = NSNumberFormatter()
    let formatter2 = NSNumberFormatter()
    @IBOutlet weak var carValue: UITextField!
    @IBOutlet weak var tradeInValue: UITextField!
    @IBOutlet weak var moneyDown: UITextField!
    @IBOutlet weak var interestRate: UITextField!
    @IBOutlet weak var taxes: UITextField!
    @IBOutlet weak var monthLength: UITextField!
    @IBOutlet weak var monthTotal: UILabel!
    
    @IBAction func CalculatePayment(sender: AnyObject) {
        formatter.numberStyle = .CurrencyStyle
        //carValue.text = formatter.stringFromNumber(Double(carValue.text!)!)
        
         UIApplication.sharedApplication().sendAction("resignFirstResponder", to:nil, from:nil, forEvent:nil)
        var finalPrice = Double(carValue.text!)! - Double(tradeInValue.text!)! - Double(moneyDown.text!)!
        var totalIntRate = Double(interestRate.text!)! * finalPrice
        var totalTax = Double(taxes.text!)! * finalPrice
        var monthLen = Double(monthLength.text!)
        
        if interestRate.text == "0"
        {
            var totalMonth = finalPrice / monthLen!
            
            monthTotal.text = formatter.stringFromNumber( totalMonth)
        }
        else
        {
        var rate = Double(interestRate.text!)! / 12
       
        var totalMonth = finalPrice * (rate / (1 - pow((1 + rate) , -monthLen!)))
      
        monthTotal.text = formatter.stringFromNumber( totalMonth)
        }
    
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


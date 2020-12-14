//
//  ViewController.swift
//  salesTaxCalculator
//
//  Created by Marilyn Mao on 8/17/20.
//  Copyright © 2020 Marilyn Mao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var priceTxt: UITextField!
    @IBOutlet var salesTaxTxt: UITextField!
    @IBOutlet var totalPriceLabel: UILabel!
    @IBOutlet var calculateButton: UIButton!
    @IBOutlet var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPriceLabel.text = ""
        calculateButton.layer.cornerRadius = 25.0
        resetButton.layer.cornerRadius = 25.0
    }

    @IBAction func calculateTotalPrice(_ sender: Any) {
        let price = Double(priceTxt.text!)!
        let salesTax = Double(salesTaxTxt.text!)!
        
        let totalSalesTax = price * salesTax
        let totalPrice = price + totalSalesTax
        totalPriceLabel.text = "$\(totalPrice)" // convert number into string
    }
    
    @IBAction func reset(_ sender: Any) {
        totalPriceLabel.text = ""
        priceTxt.text = ""
        salesTaxTxt.text = ""
    }
}


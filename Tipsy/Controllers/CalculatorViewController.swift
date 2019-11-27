//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var totalBill = ""
    var numberOfPeople = 0
    
    func calculateTip() {
        if let billTextField = billTextField.text {
            if zeroPctButton.isSelected == true {
                totalBill = billTextField
            } else if tenPctButton.isSelected == true {
                totalBill = String(format: "%.2f", (Double(billTextField)! * 1.1) / Double(numberOfPeople))
            } else if twentyPctButton.isSelected == true {
                totalBill = String(format: "%.2f", (Double(billTextField)! * 1.2) / Double(numberOfPeople))
            }
        }
    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
        if sender.tag == 0 {
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
        } else if sender.tag == 1 {
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = true
            twentyPctButton.isSelected = false
        } else if sender.tag == 2 {
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = true
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(Int(sender.value))
        numberOfPeople = Int(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        guard splitNumberLabel.text != nil else { return }
        calculateTip()
        print(totalBill)
    }
}


//
//  ViewController.swift
//  Conversion Calculator
//
//  Created by Chuyang Lin on 7/27/18.
//  Copyright © 2018 Tech Innovator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var inputLabel: UILabel!
    
    var choice: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func converterCall(){
        let script = ConverterController()
        let conversion = script.converterChoice(choice, inputDisplay.text!)
        outputDisplay.text = conversion.converted
    }
    func labelCall(){
        let script = ConverterController()
        let conversion = script.titleChange(choice)
        self.inputLabel.text = conversion.inputTitle
        self.outputLabel.text = conversion.outputTitle
    }

    @IBAction func converterTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Choose Converter", message: "Choices:", preferredStyle: UIAlertControllerStyle.actionSheet)
        alert.addAction(UIAlertAction(title: "Fahrenheit to Celcius", style: UIAlertActionStyle.default, handler:{
            (alertAction) -> Void in
            self.choice = 1
            self.cTapped((Any).self)
            self.labelCall()
        }))
        alert.addAction(UIAlertAction(title: "Celcius to Fahrenheit", style: UIAlertActionStyle.default, handler:{
            (alertAction) -> Void in
            self.choice = 2
            self.cTapped((Any).self)
            self.labelCall()
        }))
        alert.addAction(UIAlertAction(title: "Miles to Kilometers", style: UIAlertActionStyle.default, handler:{
            (alertAction) -> Void in
            self.choice = 3
            self.cTapped((Any).self)
            self.labelCall()
        }))
        alert.addAction(UIAlertAction(title: "Kilometers to Miles", style: UIAlertActionStyle.default, handler:{
            (alertAction) -> Void in
            self.choice = 4
            self.cTapped((Any).self)
            self.labelCall()
        }))
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func plusMinusTap(_ sender: Any) {
        inputDisplay.text = "-" + inputDisplay.text!
        converterCall()
    }
    @IBAction func cTapped(_ sender: Any) {
        outputDisplay.text = ""
        inputDisplay.text = ""
    }
    @IBAction func nineTapped(_ sender: Any) {
        inputDisplay.text? += "9"
        converterCall()
    }
    @IBAction func eightTapped(_ sender: Any) {
        inputDisplay.text? += "8"
        converterCall()
    }
    @IBAction func sevenTapped(_ sender: Any) {
        inputDisplay.text? += "7"
        converterCall()
    }
    @IBAction func sixTapped(_ sender: Any) {
        inputDisplay.text? += "6"
        converterCall()
    }
    @IBAction func fiveTapped(_ sender: Any) {
        inputDisplay.text? += "5"
        converterCall()
    }
    @IBAction func fourTapped(_ sender: Any) {
        inputDisplay.text? += "4"
        converterCall()
    }
    @IBAction func threeTapped(_ sender: Any) {
        inputDisplay.text? += "3"
        converterCall()
    }
    @IBAction func twoTapped(_ sender: Any) {
        inputDisplay.text? += "2"
        converterCall()
    }
    @IBAction func oneTapped(_ sender: Any) {
        inputDisplay.text? += "1"
        converterCall()
    }
    @IBAction func zeroTapped(_ sender: Any) {
        if(inputDisplay.text == ""){
            inputDisplay.text? += "0."
        }
        else{
            inputDisplay.text? += "0"
        }
        converterCall()
    }
    @IBAction func dotTapped(_ sender: Any) {
        if(inputDisplay.text?.contains(".") == false)
        {
            if(inputDisplay.text == ""){
                inputDisplay.text? += "0."
            }else{
                inputDisplay.text? += "."
            }
            
        }
        
    }
}


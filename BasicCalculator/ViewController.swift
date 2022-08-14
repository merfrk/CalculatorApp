//
//  ViewController.swift
//  BasicCalculator
//
//  Created by Omer on 13.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var clearButton: UIButton!
    
    var firstNumber: Double?
    var secondNumber: Double?
    var firstPart: String?
    var secondPart: String?
    var result: Double?
    var operationType: operation?
    
    enum operation {
        case addition
        case subtraction
        case multiplication
        case division
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func numberPadClicked(_ sender: UIButton) {
        let font = UIFont(name: "Helvetica", size: 30)
        
        if resultLabel.text! == "0" && sender.titleLabel?.text! != "."{
            resultLabel.text! = ""
        }
        
        resultLabel.text! += (sender.titleLabel?.text!)!
        if clearButton.titleLabel?.text! == "AC"{
            clearButton.setAttributedTitle(NSAttributedString(string: "C", attributes: [NSAttributedString.Key.font: font!]), for: .normal)
        }
    }
    
    @IBAction func clear(_ sender: UIButton) {
        resultLabel.text! = "0"
        
        let font = UIFont(name: "Helvetica", size: 30)
        if clearButton.titleLabel?.text! == "C"{
            clearButton.setAttributedTitle(NSAttributedString(string: "AC", attributes: [NSAttributedString.Key.font: font!]), for: .normal)
        }
    }
    
    @IBAction func reverseSign(_ sender: Any) {
        let i = resultLabel.text!.index(resultLabel.text!.startIndex, offsetBy: 0)
        
        if resultLabel.text!.hasPrefix("-"){
            resultLabel.text!.remove(at: i)
        }else{
            resultLabel.text!.insert("-", at: i)
        }
    }
    
    @IBAction func percentClicked(_ sender: Any) {
        var newResult = Double(resultLabel.text!)!
        newResult /= 100
        resultLabel.text! = String(newResult)
    }
    
    @IBAction func addClicked(_ sender: Any) {
        firstPart = resultLabel.text!
        resultLabel.text! = ""
        firstNumber = Double(firstPart!)!
        operationType = .addition
    }
    
    @IBAction func calculate(_ sender: Any) {
        secondPart = String(resultLabel.text!)
        secondNumber = Double(secondPart!)!
        
        switch operationType{
        case .addition:
            result = firstNumber! + secondNumber!
        case .none:
            print("")
        case .subtraction:
            print("")
        case .multiplication:
            print("")
        case .division:
            print("")
        }
        
        resultLabel.text! = String(result!)
    }
    
    
}


//
//  ViewController.swift
//  BasicCalculator
//
//  Created by Omer on 13.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var clearButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func changeAC(_ sender: Any) {
        let font = UIFont(name: "Helvetica", size: 30)
        clearButton.setAttributedTitle(NSAttributedString(string: "C", attributes: [NSAttributedString.Key.font: font!]), for: .normal)
        
    }
    
    
    @IBAction func clear(_ sender: UIButton) {
        let font = UIFont(name: "Helvetica", size: 30)
        clearButton.setAttributedTitle(NSAttributedString(string: "AC", attributes: [NSAttributedString.Key.font: font!]), for: .normal)
    }
    
    
}


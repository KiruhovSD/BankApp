//
//  ViewController.swift
//  BankApp
//
//  Created by spbtrak on 26.11.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amauntLabel: UILabel?
    
    var amount = 9999.99 {
        didSet {
            amauntLabel?.text = "\(amount)"
        }
    }
    
    func updateAmountLabel() {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencySymbol = "₽"
        
        let number = NSNumber(value: amount)
        
        amauntLabel?.text = formatter.string(from: number)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       updateAmountLabel()
        
    }


}


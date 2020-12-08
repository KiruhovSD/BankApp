//
//  ViewController.swift
//  BankApp
//
//  Created by spbtrak on 26.11.2020.
//

import UIKit

class ViewController: UIViewController {
// MARK: - Outlets
    @IBOutlet weak var amauntLabel: UILabel?
    
    @IBOutlet weak var nperTextField: UITextField?
    @IBOutlet weak var pvTextField: UITextField?
    @IBOutlet weak var rateTextField: UITextField?
    
    // MARK: - Properties
    var amount = 9999.99 {
        didSet {
            amauntLabel?.text = "\(amount)"
        }
    }
    
    // MARK: - Methods
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

    @IBAction func textFieldEditingChanged(_ sender: UITextField) {
        print(sender.text ?? "nil")
    }
    
}


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
        amauntLabel?.text = "\(amount)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       updateAmountLabel()
        
    }


}


//
//  SecondViewController.swift
//  BudgetBuster
//
//  Created by Lee Miller on 4/24/17.
//  Copyright © 2017 Lee Miller. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var amount: UITextField!
    
    @IBAction func addItem(_ sender: Any) {
        if (name.text != "" && amount.text != "")
        {
            nameData.append(name.text!)
            amountData.append(Double(amount.text!)!)
        
            name.text = ""
            amount.text = ""
        }
        name.resignFirstResponder()
        amount.resignFirstResponder()
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


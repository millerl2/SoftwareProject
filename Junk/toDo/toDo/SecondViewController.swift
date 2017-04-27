//
//  SecondViewController.swift
//  toDo
//
//  Created by Sebastian Hette on 23.09.2016.
//  Copyright © 2016 MAGNUMIUM. All rights reserved.
//

import UIKit
var amountFinal = 0

class SecondViewController: UIViewController {
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var type: UITextField!
    @IBOutlet weak var amount: UITextField!
    @IBOutlet weak var notes: UITextField!

    @IBAction func addItem(_ sender: AnyObject)
    {
        if (name.text != "")
        {
            list.append(name.text!)
            name.text = ""
        }
        
//        amountFinal = amountFinal + Int(amount.text?)
        print(amountFinal)
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


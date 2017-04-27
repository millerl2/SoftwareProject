//
//  SecondViewController.swift
//  toDo
//
//  Created by Sebastian Hette on 23.09.2016.
//  Copyright © 2016 MAGNUMIUM. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var amounts: UITextField!
    
    @IBAction func addItem(_ sender: AnyObject)
    {
        if (input.text != "")
        {
            list.append(input.text!)
            amount.append(amounts.text!)
            input.text = ""
        }
        
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


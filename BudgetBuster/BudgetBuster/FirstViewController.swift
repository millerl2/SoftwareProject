//
//  FirstViewController.swift
//  BudgetBuster
//
//  Created by Lee Miller on 4/24/17.
//  Copyright © 2017 Lee Miller. All rights reserved.
//

import UIKit

    var nameData = ["Katie", "James", "Lee"]
    var amountData = [100.00,20.00,55.00]
    var length = 0
    var balance = 0.00
    var balanceString = ""

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var balanceDisplay: UILabel!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if (nameData.count == amountData.count)
        {
            length = nameData.count
            return length
        }
        else {
            return 0
        }
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        balanceString = "$" + String(format: "%.2f", balance)
        balanceDisplay.text = balanceString
        
        let cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: "testCell")
        
        cell.textLabel?.text = nameData[indexPath.row]
        let holdString = String(format: "%.2f", amountData[indexPath.row])
        let amountString = "$" + holdString
        cell.detailTextLabel?.text = amountString
        
        return(cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            nameData.remove(at: indexPath.row)
            amountData.remove(at: indexPath.row)
            balance = amountData.reduce(0,+)
            balanceString = "$" + String(format: "%.2f", balance)
            balanceDisplay.text = balanceString
            myTableView.reloadData()
            
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        balance = amountData.reduce(0,+)
        balanceString = "$" + String(format: "%.2f", balance)
        balanceDisplay.text = balanceString
        myTableView.reloadData()
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


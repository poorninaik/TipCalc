//
//  ViewController.swift
//  TipCalculator
//
//  Created by Poornima Naik on 3/13/17.
//  Copyright © 2017 Poornima Naik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var totalBy2: UILabel!
    
    @IBOutlet weak var totalby3: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billText: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }


     @IBAction func calculateTip(_ sender: Any) {        let tipPercent = [0.18, 0.20, 0.25]
        let bill = Double(billText.text!) ?? 0
        let tip = bill * tipPercent[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        
        totalLabel.text = String(format: "$%.2f", total)
        
        totalBy2.text = String(format: "$%.2f", total/2)
        
        totalby3.text = String(format: "$%.2f", total/3)
        
    }
}


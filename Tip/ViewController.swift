//
//  ViewController.swift
//  Tip
//
//  Created by Vladimir Novoselskiy on 5/22/19.
//  Copyright © 2019 Maria Novoselskaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var total_label: UILabel!
    

    @IBOutlet weak var tipLabel: UILabel!
    
    
 
    
    @IBOutlet weak var tipcontrol: UISegmentedControl!
    
    @IBOutlet weak var Labelfield: UILabel!
    
    @IBOutlet weak var billfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)    }

    @IBAction func calculate(_ sender: Any) {
        
        let tipPercentage = [0.18,0.20,0.25]
        
        let bill = Double(billfield.text!) ?? 0
        
        let tip = bill * tipPercentage[tipcontrol.selectedSegmentIndex]
        
        let total = bill + tip
        
        tipLabel.text = String(format:"$%.2f",tip)
        total_label.text = String(format:"$%.2f", total)
        
        
        
        
        
        
        //total_label.text = "$110.00"
       // tipLabel.text = "20.00"
    }
}


      // let bill = Double(billfield.text!) ?? 0
        
      //  let tip = bill * 0.2
       // let total = bill + tip
        //tipLabel.text = String(format:"$%.2f",tip)
        
       // let tipPercent = [0.1, 0.18, 0.2]
        
        //let tip = bill * tipPercent[tipcontrol.selectedSegmentIndex]
        
       // let total = bill + tip







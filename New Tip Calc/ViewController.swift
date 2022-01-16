//
//  ViewController.swift
//  New Tip Calc
//
//  Created by Avi Patel on 1/12/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipCost: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipAmount: UISegmentedControl!
    @IBOutlet weak var inputLabel: UITextField!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var numGroups: UILabel!
    @IBOutlet weak var groupIncrementor: UIStepper!
    @IBOutlet weak var yourTotalLabel: UILabel!
    @IBOutlet weak var currencyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        groupIncrementor.autorepeat = true
        groupIncrementor.minimumValue = 1
        let locale = NSLocale.autoupdatingCurrent
        currencyLabel.text = locale.currencySymbol!
        
        
        let currencyFormatter = NumberFormatter()
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = .currency
        currencyFormatter.locale = Locale.current
        tipCost.text = currencyFormatter.string(from: 0)!
        totalLabel.text = currencyFormatter.string(from: 0)!
        yourTotalLabel.text = currencyFormatter.string(from: 0)!
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        let one = defaults.integer(forKey: "tipOne")
        let two = defaults.integer(forKey: "tipTwo")
        let three = defaults.integer(forKey: "tipThree")
        tipAmount.setTitle(String(one), forSegmentAt: 0)
        tipAmount.setTitle(String(two), forSegmentAt: 1)
        tipAmount.setTitle(String(three), forSegmentAt: 2)
        let mode = defaults.integer(forKey: "mode")
        if (mode == 0) {
            overrideUserInterfaceStyle = .light
            navigationController?.navigationBar.barStyle = .default
        } else {
            overrideUserInterfaceStyle = .dark
            navigationController?.navigationBar.barStyle = .black
        }
        inputLabel.becomeFirstResponder()
    }
    @IBAction func calculateCost(_ sender: Any) {
        let bill = Double(inputLabel.text!) ?? 0
        let defaults = UserDefaults.standard
        let one = Double(defaults.integer(forKey: "tipOne"))/100
        let two = Double(defaults.integer(forKey: "tipTwo"))/100
        let three = Double(defaults.integer(forKey: "tipThree"))/100
        let tipPercentages = [one, two, three]
        let tip = bill * tipPercentages[tipAmount.selectedSegmentIndex]
        let total = bill + tip
        let groupCount = Double(numGroups.text!) ?? 0
        let myTotal = total / groupCount
        
        let ns1 = tip as NSNumber
        let ns2 = total as NSNumber
        let ns3 = myTotal as NSNumber
        
        let currencyFormatter = NumberFormatter()
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = .currency
        currencyFormatter.locale = Locale.current
        
        tipCost.text = currencyFormatter.string(from: ns1)!
        totalLabel.text = currencyFormatter.string(from: ns2)!
        yourTotalLabel.text = currencyFormatter.string(from: ns3)!
    }
    
    @IBAction func incrementGroupFunc(_ sender: UIStepper) {
        numGroups.text = Int(sender.value).description
    }
    
    
}


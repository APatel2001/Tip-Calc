//
//  SettingsViewController.swift
//  New Tip Calc
//
//  Created by Avi Patel on 1/14/22.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var tipOne: UITextField!
    @IBOutlet weak var tipTwo: UITextField!
    @IBOutlet weak var tipThree: UITextField!
    @IBOutlet weak var ModeToggle: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        tipOne.text = String(defaults.integer(forKey: "tipOne"))
        tipTwo.text = String(defaults.integer(forKey: "tipTwo"))
        tipThree.text = String(defaults.integer(forKey: "tipThree"))
        let mode = defaults.integer(forKey: "mode")
        ModeToggle.selectedSegmentIndex = mode
        if (mode == 0) {
            overrideUserInterfaceStyle = .light
            navigationController?.navigationBar.barStyle = .default
        } else {
            overrideUserInterfaceStyle = .dark
            navigationController?.navigationBar.barStyle = .black
        }
        tipOne.becomeFirstResponder()
        tipTwo.becomeFirstResponder()
        tipThree.becomeFirstResponder()
    }
    
    
    
    @IBAction func SaveTip(_ sender: Any) {
        let defaults = UserDefaults.standard
        let one = Int(tipOne.text!) ?? 15
        let two = Int(tipTwo.text!) ?? 20
        let three = Int(tipThree.text!) ?? 25
        defaults.set(one, forKey: "tipOne")
        defaults.set(two, forKey: "tipTwo")
        defaults.set(three, forKey: "tipThree")
        defaults.synchronize()
    }
    
    @IBAction func changeMode(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(ModeToggle.selectedSegmentIndex, forKey: "mode")
        defaults.synchronize()
        let mode = defaults.integer(forKey: "mode")
        if (mode == 0) {
            overrideUserInterfaceStyle = .light
            navigationController?.navigationBar.barStyle = .default
        } else {
            overrideUserInterfaceStyle = .dark
            navigationController?.navigationBar.barStyle = .black
        }
    }
    
}

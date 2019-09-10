//
//  ViewController.swift
//  LogingAL
//
//  Created by 2020-1 on 9/10/19.
//  Copyright © 2019 2020-1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var yellowSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToYellow(_ sender: Any) {
        if self.yellowSwitch.isOn{
            performSegue(withIdentifier: "yellow", sender: nil)
            
        print("Hola 1")
    }
}
    
    @IBAction func goToGreen(_ sender: Any) {
        if self.greenSwitch.isOn{
            performSegue(withIdentifier: "green", sender: nil)
            
            print("Hola 2")
        
    }
}
}

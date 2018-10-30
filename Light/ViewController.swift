//
//  ViewController.swift
//  Light
//
//  Created by Shun-Ching, Chou on 2018/10/30.
//  Copyright © 2018 Shun-Ching, Chou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateUI()
    }
    
    func updateUI() {
        view.backgroundColor = lightOn ? UIColor.white : UIColor.black
    }

    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
    }
    
    
    
}


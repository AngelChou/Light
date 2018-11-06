//
//  ViewController.swift
//  Light
//
//  Created by Shun-Ching, Chou on 2018/10/30.
//  Copyright © 2018 Shun-Ching, Chou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var version = 2
    var lightOn = true
    var sequence = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sequence = Int.random(in: 0...6)
        print(sequence)
        updateUI(ver: version)
    }
    
    func updateUI(ver: Int) {
        if ver == 1 {
            // version 1: Light
            view.backgroundColor = lightOn ? UIColor.white : UIColor.black
        } else {
            // version 2: Rainbow
            switch sequence {
            case 0:
                view.backgroundColor = UIColor.red
            case 1:
                view.backgroundColor = UIColor.orange
            case 2:
                view.backgroundColor = UIColor.yellow
            case 3:
                view.backgroundColor = UIColor.green
            case 4:
                view.backgroundColor = UIColor.blue
            case 5:
                view.backgroundColor = UIColor(red: 75, green: 0, blue: 130, alpha: 1.0)
            default:
                view.backgroundColor = UIColor.purple
            }
        }
        
        
        
    }

    @IBAction func buttonPressed(_ sender: Any) {
        if version == 1 {
            lightOn = !lightOn
        } else {
            if (sequence == 6) {
                sequence = 0
            } else {
                sequence += 1
            }
        }
        updateUI(ver: version)
    }
    
    
    
}


//
//  ViewController.swift
//  mydogo
//
//  Created by jie gao on 30/10/19.
//  Copyright © 2019 Wisetree Solutions Pty Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let colors: [UIColor] = [.cyan, .orange, .blue, .green, .red, .purple, .yellow, .magenta]

    @IBOutlet var valueLabel: UILabel!
    @IBOutlet var randomButton: CircularButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
}

// MARK: action methods
extension ViewController {
    @IBAction func edit(_ sender: Any) {
        // go to method screen
    }
    
    @IBAction func random(_ sender: Any) {
        var n = 0
        UIView.animateKeyframes(withDuration: 0.25, delay: 0, options: [], animations: {
            self.view.backgroundColor = self.colors.randomElement() ?? .purple
                       self.valueLabel.text = String(Int.random(in: 1...6))
                       n = n + 1
                       if n == 10 {
                           self.view.layer.removeAllAnimations()
                       }
        }, completion: nil)
    }
}


//
//  ViewController.swift
//  mydogo
//
//  Created by jie gao on 30/10/19.
//  Copyright © 2019 Wisetree Solutions Pty Ltd. All rights reserved.
//

import UIKit

class RandomViewController: UIViewController {
    
    @IBOutlet var repsLabel: UILabel!
    @IBOutlet var valueLabel: UILabel!
    let viewModel = RandomViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(random(_:)))
        tapRecognizer.numberOfTapsRequired = 2
        self.view.addGestureRecognizer(tapRecognizer)
        // Do any additional setup after loading the view.
    }
}

// MARK: action methods
extension RandomViewController {
    
    
    
    @IBAction func edit(_ sender: Any) {
        // go to method screen
    }
    
    @objc func random(_ sender: Any) {
        UIView.animate(withDuration: 1.0) {
            self.valueLabel.alpha = 0.0
            self.repsLabel.alpha = 0.0
            self.random()
            self.valueLabel.alpha = 1.0
            self.repsLabel.alpha = 1.0
        }
    }
    
    func random() {
        let bgColor = viewModel.randomColor()
        let inverseColor = bgColor.inverseColor()
        self.view.backgroundColor = bgColor
        self.repsLabel.textColor = inverseColor
        self.repsLabel.text = viewModel.randomReps()
        self.valueLabel.textColor = inverseColor
        self.valueLabel.text = viewModel.randomExercise()
        
        
    }
}


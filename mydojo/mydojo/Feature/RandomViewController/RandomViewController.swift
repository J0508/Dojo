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
    @IBOutlet var randomButton: CircularButton!
    let viewModel = RandomViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

// MARK: action methods
extension RandomViewController {
    
    
    
    @IBAction func edit(_ sender: Any) {
        // go to method screen
    }
    
    @IBAction func random(_ sender: Any) {
        self.valueLabel.alpha = 0.0
        self.repsLabel.alpha = 0.0
        UIView.animateKeyframes(withDuration: 2.0, delay: 0.0, options: [], animations: {
            for frame in 0...7 {
                let f = CGFloat(frame)
                UIView.addKeyframe(withRelativeStartTime: Double(f/8.0), relativeDuration: 1/8, animations: {
                    self.random()
                    let alp = (f + 1.0)/8.0
                    self.valueLabel.alpha = alp
                    self.repsLabel.alpha = alp
                })
            }
        }, completion: nil)
    }
    
    func random() {
        self.view.backgroundColor = viewModel.randomColor()
        self.repsLabel.text = viewModel.randomReps()
        self.valueLabel.text = viewModel.randomExercise()
        
    }
}


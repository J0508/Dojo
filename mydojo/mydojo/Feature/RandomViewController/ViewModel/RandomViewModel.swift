//
//  RandomViewModel.swift
//  mydojo
//
//  Created by Xuwei Liang on 30/10/19.
//  Copyright © 2019 Wisetree Solutions Pty Ltd. All rights reserved.
//

import UIKit

class RandomViewModel {
    let reps = ["5x", "10x", "20x"]
    let colors: [UIColor] = [.cyan, .orange, .blue, .green, .red, .purple, .magenta]
    let exercise: [String] = ["Push up", "Star jump", "Sit up", "Bicycle crunches", "Bear crawls", "Forearm plank", "Torso twisting sit up", "Lower ab crunches"]
    
    func randomColor()->UIColor {
        self.colors.randomElement() ?? .purple
    }
    
    func randomExercise()->String {
        self.exercise.randomElement() ?? "Push up"
    }
    
    func randomReps()->String {
        self.reps.randomElement() ?? "5x"
    }
}

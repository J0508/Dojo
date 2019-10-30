//
//  EditViewModel.swift
//  mydojo
//
//  Created by Xuwei Liang on 30/10/19.
//  Copyright © 2019 Wisetree Solutions Pty Ltd. All rights reserved.
//

import UIKit

class EditViewModel {
    
    static let defaultExercises = ["Push up", "Star jump", "Sit up", "Bicycle crunches", "Bear crawls", "Forearm plank", "Torso twisting sit up", "Lower ab crunches"]
    var exercises: [String] = []
    
    init() {
        exercises = UserDefaults.standard.array(forKey: "exercises") as? [String] ?? EditViewModel.defaultExercises
    }
    
    func add(_ exercise: String) {
        
    }
    
    func delete(_ exercise: String) {
        
    }
}

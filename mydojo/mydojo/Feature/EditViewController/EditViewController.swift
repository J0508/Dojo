//
//  EditViewController.swift
//  mydojo
//
//  Created by Xuwei Liang on 30/10/19.
//  Copyright © 2019 Wisetree Solutions Pty Ltd. All rights reserved.
//

import UIKit

class EditViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    @IBOutlet var tableView: UITableView!
    let viewModel = EditViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
    }
}

extension EditViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.exercises.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.detailTextLabel?.text = viewModel.exercises[indexPath.row]
        return cell
    }
    
}

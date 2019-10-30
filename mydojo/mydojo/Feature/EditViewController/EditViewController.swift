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
    let editViewModel = EditViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
    }
}

extension EditViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
}

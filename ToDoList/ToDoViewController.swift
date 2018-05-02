//
//  ToDoViewController.swift
//  ToDoList
//
//  Created by Zooey Bossert on 02-05-18.
//  Copyright © 2018 Zooey Bossert. All rights reserved.
//

import UIKit

class ToDoViewController: UITableViewController {
    
    
    func updateSaveButtonState() {
        let text = titleTextField.text ?? ""
        saveButton.isEnabled = !text.isEmpty
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateSaveButtonState()
    }
}

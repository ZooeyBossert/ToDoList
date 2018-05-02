//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Zooey Bossert on 02-05-18.
//  Copyright © 2018 Zooey Bossert. All rights reserved.
//

import UIKit

// Now the cell has something to inform
@objc protocol ToDoCellDelegate: class {
    func checkmarkTapped(sender: ToDoCell)
}

// Create subclass
class ToDoCell: UITableViewCell {
    
    // MARK: - Variables
    var delegate: ToDoCellDelegate?
    
    @IBOutlet weak var isCompleteButton: UIButton!
    @IBOutlet weak var titleTable: UILabel!
    
    // MARK: - Functions
    @IBAction func isCompleteButtonTapped() {
        delegate?.checkmarkTapped(sender: self)
    }
    
}

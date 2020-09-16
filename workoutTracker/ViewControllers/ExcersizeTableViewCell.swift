//
//  ExcersizeTableViewCell.swift
//  workoutTracker
//
//  Created by Alex Woods on 16/09/2020.
//  Copyright © 2020 Alex Woods. All rights reserved.
//

import UIKit

class ExcersizeTableViewCell: UITableViewCell {
    
    //MARK: Properties
    
    @IBOutlet weak var excersizeNameLabel: UILabel!
    
    @IBOutlet weak var setsLabel: UILabel!
    
    @IBOutlet weak var repsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

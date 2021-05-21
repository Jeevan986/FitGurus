//
//  PostCell.swift
//  FitGuru
//
//  Created by Furlhamu Sherpa on 5/13/21.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var fitguruLabel: UILabel!
    @IBOutlet weak var workoutLabel: UILabel!
    @IBOutlet weak var dietLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

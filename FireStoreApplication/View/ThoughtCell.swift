//
//  ThoughtCell.swift
//  FireStoreApplication
//
//  Created by Jason Howard Kendall on 7/14/19.
//  Copyright © 2019 JHK. All rights reserved.
//

import UIKit

class ThoughtCell: UITableViewCell {
    
    // Outlets
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var timestampLabel: UILabel!
    @IBOutlet weak var likesImage: UIImageView!
    @IBOutlet weak var likesNumberLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(thought: Thought) {
        
    }

}

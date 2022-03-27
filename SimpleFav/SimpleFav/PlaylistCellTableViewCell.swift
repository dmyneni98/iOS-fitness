//
//  PlaylistCellTableViewCell.swift
//  SimpleFav
//
//  Created by Chris Le on 3/26/22.
//

import UIKit

class PlaylistCellTableViewCell: UITableViewCell {

    
    @IBOutlet weak var thumbnailImage: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var videoTitleLabel: UILabel!
    @IBOutlet weak var videoDescriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


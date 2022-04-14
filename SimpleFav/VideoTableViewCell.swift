//
//  VideoTableViewCell.swift
//  SimpleFav
//
//  Created by Ruben Gonzalez on 4/14/22.
//

import UIKit

class VideoTableViewCell: UITableViewCell {

    @IBOutlet weak var videoTitle: UITextField!
    @IBOutlet weak var videoImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

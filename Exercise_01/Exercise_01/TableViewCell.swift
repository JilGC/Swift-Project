//
//  TableViewCell.swift
//  Exercise_01
//
//  Created by Jil Patel on 2022-11-23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var labelDevice: UILabel!
    
    @IBOutlet weak var labelPrice: UILabel!
    
    @IBOutlet weak var imageDevice: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

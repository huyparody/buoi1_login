//
//  ImageTableViewCell.swift
//  buoi1-login
//
//  Created by Huy Trinh Duc on 8/21/18.
//  Copyright © 2018 Huy Trinh Duc. All rights reserved.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var imgUser: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

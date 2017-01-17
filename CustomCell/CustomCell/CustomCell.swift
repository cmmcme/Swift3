//
//  CustomCell.swift
//  CustomCell
//
//  Created by 윤찬미 on 2017. 1. 16..
//  Copyright © 2017년 윤찬미. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var amountLabel: UILabel!
    @IBOutlet var valueLabel: UILabel!
    @IBOutlet var imgView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgView.contentMode = UIViewContentMode.scaleAspectFill
        
        // 반지름이 50
        imgView.layer.cornerRadius = 50.0
        
        imgView.layer.masksToBounds = true
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  WeatherTableViewCell.swift
//  WeatherTable
//
//  Created by 윤찬미 on 2017. 1. 17..
//  Copyright © 2017년 윤찬미. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var weatherLabel: UILabel!
    @IBOutlet var temperatureLabel: UILabel!
    @IBOutlet var imgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

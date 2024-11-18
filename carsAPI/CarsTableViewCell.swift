//
//  CarsTableViewCell.swift
//  carsAPI
//
//  Created by Yernur Adilbek on 11/17/24.
//

import UIKit
import SDWebImage

class CarsTableViewCell: UITableViewCell {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var countryImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var creatorLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        logoImageView.layer.cornerRadius = 16
        countryImageView.layer.cornerRadius = 21
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(_ car: Car) {
        nameLabel.text = car.name
        creatorLabel.text = car.creator
        countryLabel.text = car.country
        
        logoImageView.sd_setImage(with: URL(string: car.logo))
        countryImageView.sd_setImage(with: URL(string: car.flag))
        
    }

}

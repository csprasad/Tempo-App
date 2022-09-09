//
//  carListTBCell.swift
//  Tempo
//
//  Created by CSPrasad on 31/01/21.
//

import UIKit

class carListTBCell: UITableViewCell {
    
    public var describe: String {
        return "carListTBCell"
    }
    
    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var lblContainerView: UIView!
    @IBOutlet weak var carNameLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        redraw()
    }
    
    
    func redraw() {
        lblContainerView.layer.cornerRadius = 12
        lblContainerView.layer.shadowOffset = CGSize(width: 1, height: 4)
        lblContainerView.layer.shadowColor = UIColor.black.withAlphaComponent(0.58).cgColor
        lblContainerView.layer.shadowRadius = 3
        lblContainerView.layer.shadowOpacity = 0.58
        
        nextButton.layer.cornerRadius = nextButton.frame.size.height / 2
        nextButton.layer.borderWidth = 5
        nextButton.layer.borderColor = UIColor.white.cgColor
        
        nextButton.layer.shadowOffset = CGSize(width: 1, height: 4)
        nextButton.layer.shadowColor = UIColor.black.withAlphaComponent(0.58).cgColor
        nextButton.layer.shadowRadius = 3
        nextButton.layer.shadowOpacity = 0.58
    }
    
    func configCell(data: carListModel) {
        carImage.image = data.image
        carNameLabel.text = data.name
        
        lblContainerView.backgroundColor = UIColor(hexString: data.color)
        nextButton.backgroundColor = UIColor(hexString: data.color)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

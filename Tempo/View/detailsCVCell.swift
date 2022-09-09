//
//  detailsCVCell.swift
//  Tempo
//
//  Created by CSPrasad on 31/01/21.
//

import UIKit

class detailsCVCell: UICollectionViewCell {
    var describe: String {
        return "detailsCVCell"
    }
    
    @IBOutlet weak var carCompanyLabel: UILabel!
    @IBOutlet weak var colorButtonOne: UIButton!
    @IBOutlet weak var colorButtonTwo: UIButton!
    @IBOutlet weak var colorButtonThree: UIButton!
    @IBOutlet weak var colorButtonFour: UIButton!
    @IBOutlet weak var horsePowerLabel: UILabel!
    @IBOutlet weak var mphLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var torqueLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        redraw()
    }
    
    func redraw() {
        contentView.layer.cornerRadius = 12
        contentView.layer.shadowOffset = CGSize(width: 1, height: 4)
        contentView.layer.shadowColor = UIColor.black.withAlphaComponent(0.58).cgColor
        contentView.layer.shadowRadius = 3
        contentView.layer.shadowOpacity = 0.58
    }
    
    func configCell(data: carListModel?) {
        carCompanyLabel.text = ""
        horsePowerLabel.text = data?.horsepower
        mphLabel.text = data?.mph
        speedLabel.text = data?.speed
        torqueLabel.text = data?.torque
    }
    
}

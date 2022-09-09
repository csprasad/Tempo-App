//
//  detailsController.swift
//  Tempo
//
//  Created by CSPrasad on 31/01/21.
//

import UIKit

class detailsController: UIViewController {
    
    public var describe: String{
        return "detailsController"
    }

    @IBOutlet weak var ProfileImage: UIImageView!
    @IBOutlet weak var carNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var detailCollectionView: UICollectionView!
    
    var car: carListModel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        configView()
        detailCollectionView.dataSource = self
    }
    
    func configView() {
        carNameLabel.text = car?.name
        carImage.image = car?.image
        priceLabel.text = car?.price
    }
    
    func setup() {
        ProfileImage.layer.cornerRadius = ProfileImage.frame.size.height / 2
        ProfileImage.layer.shadowOffset = CGSize(width: 1, height: 4)
        ProfileImage.layer.shadowColor = UIColor.black.withAlphaComponent(0.58).cgColor
        ProfileImage.layer.shadowRadius = 3
        ProfileImage.layer.shadowOpacity = 0.58
        
    }

    @IBAction func buttonBackAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}

extension detailsController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: detailsCVCell().describe, for: indexPath) as! detailsCVCell
        cell.configCell(data: car)
        return cell
    }
    
    
}

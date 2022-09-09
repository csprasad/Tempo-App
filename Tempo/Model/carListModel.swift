//
//  carListModel.swift
//  Tempo
//
//  Created by CSPrasad on 31/01/21.
//

import Foundation
import UIKit

struct carListModel {
    var name: String
    var image: UIImage
    var color: String
    var companyName: String
    var price: String
    var colorsAvail = [String]()
    var horsepower: String
    var mph: String
    var speed: String
    var torque: String
    
    
    init(name: String, image: UIImage, color: String,
         companyName: String, price: String, colorsAvail: [String],
         horsepower: String, mph: String,  speed: String, torque: String) {
        self.name = name
        self.image = image
        self.color = color
        self.companyName = companyName
        self.price = price
        self.colorsAvail = colorsAvail
        self.horsepower = horsepower
        self.mph = mph
        self.speed = speed
        self.torque = torque
    }
}

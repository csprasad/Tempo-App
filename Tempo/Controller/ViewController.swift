//
//  ViewController.swift
//  Tempo
//
//  Created by CSPrasad on 31/01/21.
//

import UIKit

class carsHomeController: UIViewController {

    @IBOutlet weak var carsTableView: UITableView!
    
    @IBOutlet weak var headerView: UIView!
    
    var arrCars = [carListModel]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadArray()
        carsTableView.dataSource = self
        headerView.layer.cornerRadius = 12
        headerView.layer.shadowOffset = CGSize(width: 1, height: 4)
        headerView.layer.shadowColor = UIColor.black.withAlphaComponent(0.58).cgColor
        headerView.layer.shadowRadius = 3
        headerView.layer.shadowOpacity = 0.58
    }
    
    private func loadArray() {
        arrCars = [
            carListModel(name: "Bugatti Chiron", image: UIImage(named: "Bugatti Chiron top")!, color: "#3695C3",
                         companyName: "Bugatti", price: "$2.5 to $3 Million", colorsAvail: ["","","",""], horsepower: "1,500 hp", mph: "2.3 sec", speed: "261 mph", torque: "1,600 Nm"),
            
            carListModel(name: "Hennessey Venom F5", image: UIImage(named: "Hennessey Venom F5 front")!, color: "#F5D33B",
                         companyName: "", price: "", colorsAvail: ["","","",""], horsepower: "", mph: "", speed: "", torque: ""),
            
            carListModel(name: "Koenigsegg Agera RS", image: UIImage(named: "Koenigsegg Agera RS front")!, color: "#DFE4E6",
                         companyName: "", price: "", colorsAvail: ["","","",""], horsepower: "", mph: "", speed: "", torque: ""),
            
            carListModel(name: "Saleen S7 Twin Turbo", image: UIImage(named: "Saleen S7 Twin Turbo front")!, color: "#CACBCB",
                         companyName: "", price: "", colorsAvail: ["","","",""], horsepower: "", mph: "", speed: "", torque: ""),
            
            carListModel(name: "Tesla Roadster", image: UIImage(named: "Tesla Roadster front")!, color: "#CD1D30",
                         companyName: "", price: "", colorsAvail:["","","",""], horsepower: "", mph: "", speed: "", torque: ""),
            
            carListModel(name: "Astonmartin DBS", image: UIImage(named: "Astonmartin DBS front")!, color: "#DFE4E6",
                         companyName: "", price: "", colorsAvail: ["","","",""], horsepower: "", mph: "", speed: "", torque: ""),
            
            carListModel(name: "Ferrari F8 Tributo", image: UIImage(named: "Ferrari F8 Tributo side")!, color: "#B6191F",
                         companyName: "", price: "", colorsAvail: ["","","",""], horsepower: "", mph: "", speed: "", torque: ""),
            
            carListModel(name: "Ford GT 2017", image: UIImage(named: "Ford GT 2017 front")!, color: "#DFE4E6",
                         companyName: "", price: "", colorsAvail: ["","","",""], horsepower: "", mph: "", speed: "", torque: ""),
            
            carListModel(name: "Jaguar XJ220", image: UIImage(named: "Jaguar XJ220 front l1")!, color: "#DFE4E6",
                         companyName: "", price: "", colorsAvail: ["","","",""], horsepower: "", mph: "", speed: "", torque: ""),
            
            carListModel(name: "Lamborghini Aventador SVJ", image: UIImage(named: "Lamborghini Aventador SVJ front")!,color: "#6FB85D",
                        companyName: "", price: "", colorsAvail: ["","","",""], horsepower: "", mph: "", speed: "", torque: ""),
            
            carListModel(name: "McLaren Senna", image: UIImage(named: "McLaren Senna side")!, color: "#555555",
                         companyName: "", price: "", colorsAvail: ["","","",""], horsepower: "", mph: "", speed: "", torque: ""),
            
            carListModel(name: "SSC Tuatara", image: UIImage(named: "SSC Tuatara side")!, color: "#DFE4E6",
                         companyName: "", price: "", colorsAvail: ["","","",""], horsepower: "", mph: "", speed: "", torque: "")
        
        ]
    }
    
}

extension carsHomeController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: carListTBCell().describe, for: indexPath) as! carListTBCell
        cell.configCell(data: arrCars[indexPath.row])
        cell.nextButton.tag = indexPath.row
        cell.nextButton.addTarget(self, action: #selector(nextScreen(_:)), for: .touchUpInside)
        return cell
    }
    
    @objc func nextScreen(_ sender: UIButton) {
        print("tap")
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: detailsController().describe) as! detailsController
        vc.car = self.arrCars[sender.tag]
        self.navigationController?.show(vc, sender: nil)
    }
    
    
}

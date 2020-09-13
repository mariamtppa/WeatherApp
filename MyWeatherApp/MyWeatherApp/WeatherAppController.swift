//
//  UpperCell.swift
//  MyWeatherApp
//
//  Created by Decagon on 13/09/2020.
//  Copyright © 2020 Decagon. All rights reserved.
//

import UIKit

class WeatherAppController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                if let cell = tableView.dequeueReusableCell(withIdentifier: "theBottomCell", for: indexPath) as? bottomCell {
                    cell.days.text = "Tuesday"
                    cell.temp?.text = "25°"
                    return cell
                }
                return UITableViewCell()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
//
//    //Tell table view controller how many cells to display
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 50
//    }
//
//    /*provide the actual cell, method is called every time a table view needs a cell, configure the cell to show a certain kind of data here. */
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if let cell = tableView.dequeueReusableCell(withIdentifier: "theBottomCell", for: indexPath) as? bottomCell {
//            cell.days.text = "Tuesday"
//            cell.temp?.text = "25°"
//            return cell
//        }
//        return UITableViewCell()
//    }
}

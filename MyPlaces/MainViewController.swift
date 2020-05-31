//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Денис Ярулин on 27.05.2020.
//  Copyright © 2020 Денис Ярулин. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {

    let restaurantNames = [
        "Буше", "Гастромаркет", "Моремания", "Клёво ресторан", "Моремания",
        "Пинца", "Те самые пончики", "Хачапури", "Чебуречная",
        "Boston sea food", "FARШ", "Lumber Jack", "Pho Bo"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurantNames.count

    }


    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell

        cell.NameLabel.text = restaurantNames[indexPath.row]
        cell.ImageOfPlace.image = UIImage(named: restaurantNames[indexPath.row])
        cell.ImageOfPlace.layer.cornerRadius = cell.ImageOfPlace.frame.size.height / 2
        cell.ImageOfPlace.clipsToBounds = true
        
        return cell
    }
    
    
    
    
    // MARK:  высота строки
    
     override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    

    /*

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

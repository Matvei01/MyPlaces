//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Matvei Khlestov on 21.09.2023.
//

import UIKit

final class MainViewController: UITableViewController {

    let restaurants = Restaurant.getRestaurant()
    
    let cellID = "CellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        tableView.rowHeight = 120
        
        setupNavBar()
    }
    
    private func setupNavBar() {
        title = "Restaurants"
        
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        restaurants.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)

        var content = cell.defaultContentConfiguration()
        let restaurant = restaurants[indexPath.row]
        
        content.text = restaurant.name
        content.image = UIImage(named: restaurant.name)
        
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
}

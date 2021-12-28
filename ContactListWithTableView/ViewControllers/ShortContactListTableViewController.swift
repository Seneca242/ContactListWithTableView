//
//  ShortContactListTableViewController.swift
//  ContactListWithTableView
//
//  Created by Дмитрий Дмитрий on 26.12.2021.
//

import UIKit

class ShortContactListTableViewController: UITableViewController {

    var persons: [Person] = []

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "shortVC", for: indexPath)
        let persons = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = persons.fullName
        cell.contentConfiguration = content

        return cell
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let detailsVC = segue.destination as? DetailsViewController else { return }
//        guard let indexPath = tableView.indexPathForSelectedRow else { return }
//        let persons = persons[indexPath.row]
//        detailsVC.persons = persons
        
        //the second way to do it
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! DetailsViewController
            detailVC.persons = persons[indexPath.row]
        }
        
    }
}

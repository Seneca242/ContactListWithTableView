//
//  FullContactListTableViewController.swift
//  ContactListWithTableView
//
//  Created by Дмитрий Дмитрий on 26.12.2021.
//

import UIKit

class FullContactListTableViewController: UITableViewController {

    
    var persons: [Person] = []
    
    /*
    does this way work?
    var persons: [Person]!
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullVC", for: indexPath)
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.phoneNumber
            content.image = UIImage(systemName: TitleForImages.phoneNumber.rawValue)
        default:
            content.text = person.emails
            content.image = UIImage(systemName: TitleForImages.email.rawValue)
        }
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    
}

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

    // MARK: - Tableview data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        persons[section].fullName
//    }
     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons[section].rowContent.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullVC", for: indexPath)
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        /*
        Option 1
         
        switch indexPath.row {
        case 0:
            content.text = person.phoneNumber
            content.image = UIImage(systemName: person.pituresForRows[0])
        default:
            content.text = person.email
            content.image = UIImage(systemName: person.pituresForRows[1])
        }
        */
        
        /*
        Option 2
         
        switch indexPath.row {
        case 0:
            content.text = person.phoneNumber
            content.image = UIImage(systemName: TitleForImages.phoneNumber.rawValue)
        default:
            content.text = person.email
            content.image = UIImage(systemName: TitleForImages.email.rawValue)
        }
         */
        
        /*
        Option 3
         
        for everyRow in 0...indexPath.row {
                content.text = person.rowContent[everyRow];
                content.image = UIImage(systemName: person.pituresForRows[everyRow])
            }
         */
        
//      Option 4:
        content.text = person.rowContent[indexPath.row]
        content.image = UIImage(systemName: person.pituresForRows[indexPath.row])
        
        cell.contentConfiguration = content

        return cell
        
    }
    
    // MARK: - TableView delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let contentView = UIView()
        let fullNameLabel = UILabel(
            frame: CGRect(
                x: 20,
                y: -3,
                width: tableView.frame.width,
                height: 35
            )
        )
        fullNameLabel.text = persons[section].fullName
        fullNameLabel.font = UIFont.boldSystemFont(ofSize: 17)
        fullNameLabel.textColor = .white
        
        contentView.addSubview(fullNameLabel)
        return contentView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        let labelHeight: CGFloat = 35.0
        return labelHeight
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.backgroundColor = .black
    }
}

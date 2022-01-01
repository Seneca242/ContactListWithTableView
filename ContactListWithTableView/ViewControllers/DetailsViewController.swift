//
//  DetailsViewController.swift
//  ContactListWithTableView
//
//  Created by Дмитрий Дмитрий on 26.12.2021.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var persons: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = persons.fullName
        phoneNumberLabel.text = "Phone number: \(persons.phoneNumber)"
        emailLabel.text = "Email: \(persons.email)"
    }
}

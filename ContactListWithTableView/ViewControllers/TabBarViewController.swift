//
//  TabBarViewController.swift
//  ContactListWithTableView
//
//  Created by Дмитрий Дмитрий on 26.12.2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    var persons = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(with: persons)
    }
        /*
        does this way work?
        guard let shortVC = viewControllers?.first as? ShortContactListTableViewController else { return } 
        */
        
    private func setupViewControllers(with person: [Person]) {
        let shortVC = viewControllers?.first as! ShortContactListTableViewController
        let fullVC = viewControllers?.last as! FullContactListTableViewController
        
        shortVC.persons = person
        fullVC.persons = person
        
    }

}

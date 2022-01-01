//
//  PersonalData.swift
//  ContactListWithTableView
//
//  Created by Дмитрий Дмитрий on 25.12.2021.
//

class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "Ann", "John", "Mike"
    ]
    let surnames = [
        "Black", "White", "Gordon", "Smith", "Clinton"
    ]
    let phoneNumber = [
        "12345", "23456", "34567", "45678"
    ]
    let emails = [
        "first@email.com", "second@email.com", "third@email.com", "fourth@email.com"
    ]
    
    private init() {}
}

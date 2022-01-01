//
//  ContactListModel.swift
//  ContactListWithTableView
//
//  Created by Дмитрий Дмитрий on 25.12.2021.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    var rowContent: [String] {
        [phoneNumber, email]
    }
    
    var pituresForRows: [String] {
       ["phone", "tray"]
        
    }
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumber.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        let iterationNumber = min(names.count, surnames.count, phoneNumbers.count, emails.count)
        
        for iteration in 0..<iterationNumber {
            let person = Person(
                name: names[iteration],
                surname: surnames[iteration],
                phoneNumber: phoneNumbers[iteration],
                email: emails[iteration]
            )
            persons.append(person)
        }
        return persons
    }
}

enum TitleForImages: String {
    case phoneNumber = "phone"
    case email = "tray"
}

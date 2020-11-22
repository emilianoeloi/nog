//
//  PersonViewModel.swift
//  nog
//
//  Created by Emiliano Barbosa on 21/11/20.
//

import SwiftUI

struct PersonViewModel: Identifiable {
    
    let id =  UUID()
    
    let person: Person
    
    init(person: Person) {
        self.person = person
    }
    
    var name: String {
        return person.name
    }
    
    var born: String {
        return person.born
    }
    
    var nationality: String {
        return person.nationality
    }
    
    var photoURL: String {
        return person.photoURL
    }
}

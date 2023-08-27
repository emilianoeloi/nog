//
//  PersonViewModel.swift
//  nog
//
//  Created by Emiliano Barbosa on 21/11/20.
//

import SwiftUI
import Combine
import FirebaseFirestore
import FirebaseFirestoreSwift

class PersonViewModel: ObservableObject {
    @Published var person: Person
    
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
    
    init(person: Person) {
        self.person = person
    }
}

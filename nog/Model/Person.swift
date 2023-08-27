//
//  Person.swift
//  nog
//
//  Created by Emiliano Barbosa on 21/11/20.
//

import Foundation
import Combine

struct PeopleResponse: Codable {
    let people: [Person]
}

struct Person: Codable, Identifiable {
    var id = UUID()
    var name: String
    var born: String
    var nationality: String
    var photoURL: String
}

//
//  PersonListViewModel.swift
//  nog
//
//  Created by Emiliano Barbosa on 21/11/20.
//
import Foundation
import SwiftUI
import Combine

class PersonListViewModel: ObservableObject {
    
    let didChange = PassthroughSubject<PersonListViewModel,Never>()
    
    init() {
        fetchTopHeadlines()
    }
    
    var people = [PersonViewModel]() {
        didSet {
            didChange.send(self)
        }
    }
    
    private func fetchTopHeadlines() {
        
        FirebaseService().getList() { people in
            
            if let people = people {
                self.people = people.map(PersonViewModel.init)
            }
            
        }
        
    }
    
}

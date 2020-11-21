//
//  PersonView.swift
//  nog
//
//  Created by Emiliano Barbosa on 21/11/20.
//

import SwiftUI

struct PersonView: View {
    
    var model: PersonViewModel = PersonViewModel(person: Person(name: "Emiliano", born: "1981-05-31", nationality: "Brazil", photoURL: "emiliano"))
    
    var body: some View {
        Text(model.name)
    }
}

struct PersonView_Preview: PreviewProvider {
    static var previews: some View {
        PersonView()
    }
}

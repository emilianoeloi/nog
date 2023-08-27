//
//  ContentView.swift
//  nog
//
//  Created by Emiliano Barbosa on 21/11/20.
//

import SwiftUI

struct ContentView: View {
    var model: PersonViewModel = PersonViewModel(
        person: Person(name: "Emiliano",
                       born: "1981-05-31",
                       nationality: "Brazilian",
                       photoURL: "emiliano"))
    var body: some View {
        VStack {
            PersonView(viewModel: model)
                .padding()
            Text("Firebase")
                .padding()
            
        }.padding()
            .navigationBarTitle("Nog",
                                displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

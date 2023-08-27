//
//  PersonView.swift
//  nog
//
//  Created by Emiliano Barbosa on 21/11/20.
//

import SwiftUI

struct PersonView: View {
    @ObservedObject var viewModel: PersonViewModel
    var body: some View {
        VStack {
            Text(viewModel.name)
                .background(Color.red)
            Text(viewModel.born)
        }
    }
}

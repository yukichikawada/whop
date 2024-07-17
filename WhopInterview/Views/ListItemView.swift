//
//  ListItemView.swift
//  WhopInterview
//
//  Created by Yukichi Kawada on 7/17/24.
//

import SwiftUI

struct ListItemView: View {
    @StateObject var viewModel: ListItemViewModel
    
    var body: some View {
        Text($viewModel.id)
    }
}

//#Preview {
//    ListItemView()
//}

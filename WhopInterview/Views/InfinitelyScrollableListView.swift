//
//  InfinitelyScrollableListView.swift
//  WhopInterview
//
//  Created by Yukichi Kawada on 7/17/24.
//

import SwiftUI

struct InfinitelyScrollableListView: View {
    @StateObject private var viewModel = InfinitelyScrollableListViewModel()
    
    var body: some View {
        List($viewModel.infiniteList, id: \.self) { listItem in
            ListItemView(viewModel: listItem.viewModel)
                .onAppear {
                    if viewModel.shouldLoadGetNextPage(id: listItem.viewModel.itemNumber) {
                        viewModel.fetchListItems()
                    }
                }
        }
    }
}

#Preview {
    InfinitelyScrollableListView()
}

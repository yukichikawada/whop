//
//  InfinitelyScrollableListViewModel.swift
//  WhopInterview
//
//  Created by Yukichi Kawada on 7/17/24.
//

import Foundation

//struct ListItem: Hashable {
//    static func == (lhs: ListItem, rhs: ListItem) -> Bool {
//        lhs.viewModel.id == rhs.viewModel.id
//    }
//    
//    var viewModel: ListItemViewModel
//}

protocol ListItem {
    var itemNumber: Int { get }
}

class InfinitelyScrollableListViewModel: ObservableObject {
    @Published var infiniteList: [ListItem] = []
    @Published var lastPage: Int = 0
    
    init() {
        fetchListItems()
    }
    
    func fetchListItems() {
        getPage(lastPage)
        incrementPage()
    }
    
    func incrementPage() {
        lastPage += 1
    }
    
    func getPage(_ page: Int) {
        var nextListItems: [ListItem] = []
        
        for j in 1...20 {
            let itemNumber = calculateItemNumber(index: j, page: lastPage)
            if j % 2 == 0 {
                nextListItems.append(WhopWebViewLink(itemNumber: itemNumber))
            } else {
                nextListItems.append(ExpandableFolder(itemNumber: itemNumber))
            }
        }
        
        infiniteList.append(contentsOf: nextListItems)
    }
    
    func shouldLoadGetNextPage(id: Int) -> Bool {
        return id == lastPage * 20 - 5
    }
    
    func calculateItemNumber(index: Int, page: Int) -> Int {
        return page * 20 + index
    }
}

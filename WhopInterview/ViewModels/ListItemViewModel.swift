//
//  ListItemViewModel.swift
//  WhopInterview
//
//  Created by Yukichi Kawada on 7/17/24.
//

import Foundation

class ListItemViewModel: ObservableObject {
    var id: String
    
    init(id: String) {
        self.id = id
    }
}

//
//  ExpandableFolder.swift
//  WhopInterview
//
//  Created by Yukichi Kawada on 7/17/24.
//

import Foundation

struct ExpandableFolder: Identifiable, ListItem {
    var id: String = UUID().uuidString
    var itemNumber: Int
}

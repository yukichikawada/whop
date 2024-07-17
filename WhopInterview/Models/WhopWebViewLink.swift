//
//  WhopWebViewLink.swift
//  WhopInterview
//
//  Created by Yukichi Kawada on 7/17/24.
//

import Foundation

struct WhopWebViewLink: Identifiable, ListItem {
    var id: String = UUID().uuidString
    let url = "https://whop.com"
    var itemNumber: Int
}

//
//  PosModel.swift
//  Dogram
//
//  Created by suraj kumar on 03/12/23.
//

import Foundation

/// Post Model
struct PosModel: Identifiable, Hashable {
    var id = UUID()
    var postID: String
    var userID: String
    var username: String
    var caption: String?
    var dateCreated: Date
    var likeCount: Int
    var likeByUser: Bool
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

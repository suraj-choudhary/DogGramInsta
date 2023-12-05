//
//  PostArrayObject.swift
//  Dogram
//
//  Created by suraj kumar on 03/12/23.
//

import Foundation

class PostArrayObject: ObservableObject {
    
    @Published var dataArray = [PosModel]()
    
    init() {
        //Fetch data from data base
        let post1 = PosModel(postID: "", userID: "", username: "joe green",caption: "this is captiom", dateCreated: Date(), likeCount: 0, likeByUser: true)
        let post2 = PosModel(postID: "", userID: "", username: "joe green", dateCreated: Date(), likeCount: 0, likeByUser: true)
        let post3 = PosModel(postID: "", userID: "", username: "joe green", dateCreated: Date(), likeCount: 0, likeByUser: true)
        let post4 = PosModel(postID: "", userID: "", username: "joe green", dateCreated: Date(), likeCount: 0, likeByUser: true)
        
        self.dataArray.append(post1)
        self.dataArray.append(post2)

        self.dataArray.append(post3)

        self.dataArray.append(post4)

        
    }
    
}

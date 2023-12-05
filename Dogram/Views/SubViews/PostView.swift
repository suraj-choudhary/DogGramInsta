//
//  PostView.swift
//  Dogram
//
//  Created by suraj kumar on 03/12/23.
//

import SwiftUI

/// Post view
struct PostView: View {
    @State var post: PosModel
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 0) {
            // MARK: HEADER
            HStack {
                Image("dog4")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30, alignment: .center)
                    .cornerRadius(15)
                Text(post.username)
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(.primary)
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .font(.headline)
                
            }
            .padding(.all, 6)
            // MARK: Image
            Image("dog5")
                .resizable()
                .scaledToFit()
            
            // MARK: Footer
            
            HStack(alignment: .center, spacing: 20) {
                Image(systemName: "heart")
                    .font(.title)
                Image(systemName: "bubble.middle.bottom")
                    .font(.title)
                Image(systemName: "paperplane")
                    .font(.title)
                Spacer()
            }
            .padding(.all, 6)
            
            HStack {
                if let caption = post.caption {
                    Text(caption)
                }
                Spacer()
            }
            .padding(.all, 6)
        }
    }
}


#Preview(traits: .sizeThatFitsLayout) {
    PostView(post: PosModel(postID: "",
                            userID: "",
                            username: "Joe Green",
                            dateCreated: Date(),
                            likeCount: 0,
                            likeByUser: false))
}

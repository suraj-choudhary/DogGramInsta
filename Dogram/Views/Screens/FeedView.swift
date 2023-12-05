//
//  FeedView.swift
//  Dogram
//
//  Created by suraj kumar on 03/12/23.
//

import SwiftUI
///Feed View
struct FeedView: View {
    @ObservedObject var posts: PostArrayObject
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack {
                ForEach(posts.dataArray, id: \.self) { post in
                  PostView(post: post)
                }
            }
          
        }
        .navigationTitle("Feed view".uppercased())
        .navigationBarTitleDisplayMode(.inline)
    }
}
/// MARK: Previews
#Preview {
    NavigationView {
        FeedView(posts: PostArrayObject())
    }
}


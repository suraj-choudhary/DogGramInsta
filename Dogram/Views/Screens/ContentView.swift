//
//  ContentView.swift
//  Dogram
//
//  Created by suraj kumar on 03/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        /// create a tab view
        TabView {
            FeedView(posts: PostArrayObject())
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("Feed")
                }
            
            Text("Screen 01")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Browse")
                }
            
            Text("Screen 03")
                .tabItem {
                    Image(systemName: "square.and.arrow.up.fill")
                    Text("Upload")
                }
            
            Text("Screen 04")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
        .accentColor(Color.MyTheme.purpleColor)
    }
}

#Preview {
    ContentView()
}

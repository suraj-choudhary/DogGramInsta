//
//  CommentView.swift
//  Dogram
//
//  Created by suraj kumar on 05/12/23.
//

import SwiftUI
struct CommentView: View {
    @State var submissionText: String = ""
    var body: some View {
        VStack {
            ScrollView {
                Text("Placeholder")
                Text("Placeholder")
                Text("Placeholder")
                Text("Placeholder")
            }
            HStack {
                Image("dog1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .cornerRadius(20)
                TextField("Add a comment here", text: $submissionText)
                
                Button(action: {
                    print("send message")
                }, label: {
                    Image(systemName: "paperplane.fill")
                        .font(.title2)
                    
                })
                .accentColor(Color.MyTheme.purpleColor)
                
            }
            .padding(.all, 6)
        }
    }
}

#Preview {
    CommentView()
}

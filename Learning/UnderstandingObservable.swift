//
//  UnderstandingObservable.swift
//  Dogram
//
//  Created by suraj kumar on 05/12/23.
//

import SwiftUI


class Usersetting: ObservableObject {
    @Published var username = "suraj"
}

struct UnderstandingObservable: View {
    @ObservedObject var user = Usersetting()
    var body: some View {
        
        Text("Hello: \(user.username)")
        Button("change user name") {
            user.username = "suraj kumar"
        }
    }
}

#Preview {
    UnderstandingObservable()
}

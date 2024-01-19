//
//  CustomNavigationBar.swift
//  navigation
//
//  Created by Luis Rivera on 17/01/24.
//

import SwiftUI

struct CustomNavigationBar: View {
    var body: some View {
        NavigationStack{
            
            List(0..<100){ i in
                Text("Row \(i)")
            }
            .navigationTitle("tittle goes here")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.blue)
            .toolbarColorScheme(.dark)
            
            // this hidden the navigation bar
           // .toolbar(.hidden, for: .navigationBar)
            
        }
    }
}

#Preview {
    CustomNavigationBar()
}

//
//  NavigationTitleEditable.swift
//  navigation
//
//  Created by Luis Rivera on 19/01/24.
//

import SwiftUI

struct NavigationTitleEditable: View {
    @State private var title = "Swiftui"
    
    var body: some View {
        NavigationStack {
            Text("hELLO")
                .navigationTitle($title)
                .navigationBarTitleDisplayMode(.inline)
            //editable just work on .inline display mode of bar tittle
        }
    }
}

#Preview {
    NavigationTitleEditable()
}

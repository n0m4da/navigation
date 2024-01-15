//
//  navigationpathHome.swift
//  navigation
//
//  Created by Luis Rivera on 14/01/24.
//

import SwiftUI

struct DetailViewNPH : View {
    var number : Int
    @Binding var path:  NavigationPath
    var body: some View {
        NavigationLink("Go to random Number", value: Int.random(in: 1...1000))
            .navigationTitle("Number: \(number)")
            .toolbar{
                Button("Home"){
                    path = NavigationPath()
                    print(path)
                }
                
            }
    }
}
struct navigationpathHome: View {
    
    //MARK: - PROPERTIES
    @State private var path = NavigationPath()
    //MARK: - body
    var body: some View {
        NavigationStack(path: $path){
            DetailViewNPH(number: 0, path: $path   )
                .navigationDestination(for: Int.self){ i in
                    DetailViewNPH(number: i, path: $path)}
        }
    }
}

#Preview {
    navigationpathHome()
}

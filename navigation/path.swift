//
//  path.swift
//  navigation
//
//  Created by Luis Rivera on 14/01/24.
//

import SwiftUI

struct path: View {
    @State private var path = [Int]()
    
    var body: some View {
        NavigationStack(path: $path){
            VStack{
                Button("Show 32"){
                    path = [32]
                }
                
                Button("show 64"){
                    path.append(64)
                }
                
                Button("show 32 then 64"){
                    path = [32, 64]
                }
            }
            .navigationDestination(for: Int.self){ selection in
            Text("you select \(selection)")}
        }
    }
}

#Preview {
    path()
}

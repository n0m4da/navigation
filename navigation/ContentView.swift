//
//  ContentView.swift
//  navigation
//
//  Created by Luis Rivera on 14/01/24.
//

import SwiftUI



struct ContentView: View {
    
    //MARK: -  propertiers
 @State private var path =  NavigationPath()
    
    //MARK: - body
    var body: some View {
        NavigationStack(path: $path){
            List{
                ForEach(0..<5){ i in
                    NavigationLink("Select Number: \(i)", value: i)
                }
                
                ForEach(0..<5){ i in
                    NavigationLink("Select  string: \(i)", value: String(i))
                }
            }
            .toolbar{
                Button("Push 556"){
                    path.append(556)
                }
                
                Button("Push hello"){
                    path.append("hello")
                }
            }
            .navigationDestination(for: Int.self){ selection in
            Text("You selected the nymber \(selection) ")}
            
            .navigationDestination(for: String.self) { selection in
            Text("You selected the string \(selection)")}
        }
    }
}

#Preview {
    ContentView()
}

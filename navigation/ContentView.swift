//
//  ContentView.swift
//  navigation
//
//  Created by Luis Rivera on 14/01/24.
//

import SwiftUI
// save all path from navigation link previews after reload or close or reopen the app
@Observable
class PathStore{
    var path : NavigationPath{
        didSet{
            save()
        }
    }
    
    private let savepATH = URL.documentsDirectory.appending(path: "SavedPath")
    
    init(){
        if let data =  try? Data(contentsOf: savepATH){
            if let decoded = try? JSONDecoder().decode(NavigationPath.CodableRepresentation.self, from: data){
                path = NavigationPath(decoded)
                return
            }
        }
        path = NavigationPath()
    }
    
    func save () {
        guard let representation = path.codable else { return }
        
        do{
            let data = try JSONEncoder().encode(representation)
            try data.write(to: savepATH)
        } catch {
            print ("Failed to save navigation data")
        }
    }
}

struct DetailView : View {
    var number : Int
 
    var body: some View {
        NavigationLink("Go to random Number", value: Int.random(in: 1...1000))
            .navigationTitle("Number: \(number)")
    }
}
struct ContentView: View {
    
//MARK: - PROPERTIES
    @State private var pathStore   = PathStore()
    //MARK: - body
    var body: some View {
        NavigationStack(path: $pathStore.path){
            DetailView(number: 0)
                .navigationDestination(for: Int.self){ i in
                    DetailView(number: i)
                }
        }
    }
}

#Preview {
    ContentView()
}

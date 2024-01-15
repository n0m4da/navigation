//
//  navigationDestination.swift
//  navigation
//
//  Created by Luis Rivera on 14/01/24.
//

import SwiftUI

struct Student: Hashable {
    var id = UUID()
    var name : String
    var age: Int
}
struct navigationDestination: View {
    var body: some View {
        NavigationStack{
            List(0..<100){ i in
                NavigationLink("Seleect \(i)", value: i)
                
            }
            .navigationDestination(for: Int.self){ selection in
                Text("You select \(selection)")
            }
            .navigationDestination(for: Student.self){student  in
                Text("you select \(student.name)")
                
            }
        }
    }
}

#Preview {
    navigationDestination()
}

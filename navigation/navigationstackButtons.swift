//
//  navigationstackButtons.swift
//  navigation
//
//  Created by Luis Rivera on 17/01/24.
//

import SwiftUI

struct navigationstackButtons: View {
    var body: some View {
        NavigationStack{
            Text("HELLO")
                .toolbar{
                    ToolbarItemGroup(placement: .topBarLeading){
                        
                        Button{
                            
                        }label: {
                            Image(systemName: "pencil")
                        }
                        
                        
                        Button{
                            
                        }label: {
                            Image(systemName: "pencil")
                        }
                    }
                }
        }
    }
}

#Preview {
    navigationstackButtons()
}

//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Abilmansur Ashim on 03.02.2023.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
        
    // MARK: - BODY

    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack(alignment: .center, spacing: 10) {
                Text(name)
                    .foregroundColor(Color.gray)
                
                Spacer()
                
                if content != nil {
                    Text(content!)
                } else if linkDestination != nil && linkLabel != nil {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

// MARK: - PREVIEW

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "John / Jane", content: "Developer")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
        

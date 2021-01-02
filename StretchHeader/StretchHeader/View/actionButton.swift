//
//  Button.swift
//  StretchHeader
//
//  Created by 中筋淳朗 on 2020/11/11.
//

import SwiftUI

struct actionButton: View {
    
    // MARK: - Property
    
    var title: String
    
    var color: Color
    
    
    // MARK: - Body
    
    var body: some View {
        Button {} label: {
            Text(title)
                .fontWeight(.bold)
                .padding(.vertical, 10)
                .padding(.horizontal, 20)
                .background(color)
                .cornerRadius(15)
        }

    }
}

// MARK: - Preview

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

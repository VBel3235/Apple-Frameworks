//
//  FrameworkButton.swift
//  Apple-Frameworks
//
//  Created by Владислав Белов on 09.09.2021.
//

import Foundation
import SwiftUI

struct FrameworkButton: View{
    let title: String
    let backgroundColor: Color
    let textColor: Color
    var body: some View{
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 320, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .cornerRadius(15)
            
            
    }
}

//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Владислав Белов on 09.09.2021.
//

import Foundation
import SwiftUI

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View{
        VStack {
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
                .scaledToFit()
                .lineLimit(1)
        }
        .padding()
    }
  

}

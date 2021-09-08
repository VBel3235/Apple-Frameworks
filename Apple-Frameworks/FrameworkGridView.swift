//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Владислав Белов on 08.09.2021.
//

import SwiftUI

struct FrameworkGridView: View {
    
    
    var body: some View {
        NavigationView {
            let columns: [GridItem] =
                Array(repeating: .init(.flexible()), count: 3)
            ScrollView{
                LazyVGrid(columns: columns, content: {
                    ForEach(MockData.frameworks) { element in
                        FrameworkTitleView(framework: element)
                    }
                })
            }
            .navigationTitle("Apple Frameworks")
        }
     
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
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

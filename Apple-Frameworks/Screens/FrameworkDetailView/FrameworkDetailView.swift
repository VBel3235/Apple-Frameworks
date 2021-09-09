//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Владислав Белов on 09.09.2021.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @State private var isShowingSafariView = false
    
    @Binding var isShowingDetailView: Bool
    
    var framework: Framework
    
    var body: some View {
        VStack{
            XDismmissButton(isShowingDetailView: $isShowingDetailView)
            .padding()
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
                .padding(.top, 150)
            
            Text(framework.description)
                .font(.body)
                .minimumScaleFactor(0.5)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafariView = true
            } label: {
                FrameworkButton(title: "Learn more", backgroundColor: .red, textColor: .white)
            }
         
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            if let url = URL(string: framework.urlString){
                SafariView(url: url)
            }
          
        })
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(isShowingDetailView: .constant(false), framework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}

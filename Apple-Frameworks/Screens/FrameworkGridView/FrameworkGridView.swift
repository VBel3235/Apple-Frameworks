//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Владислав Белов on 08.09.2021.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
           
            ScrollView{
                LazyVGrid(columns: viewModel.columns, content: {
                    ForEach(MockData.frameworks) { element in
                            FrameworkTitleView(framework: element)
                                .onTapGesture {
                                    viewModel.selectedFramework = element
                                }
                    }
                })
            }
            
            .navigationTitle("Apple Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView, content: {
                if let view = viewModel.selectedFramework{
                    FrameworkDetailView(isShowingDetailView: $viewModel.isShowingDetailView, framework: view)
                }
                
            })
           
        }
    }
    
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}


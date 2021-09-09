//
//  FrameworkGridModel.swift
//  Apple-Frameworks
//
//  Created by Владислав Белов on 09.09.2021.
//

import Foundation
import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? { didSet { isShowingDetailView = true }}
    
   @Published var isShowingDetailView = false
    
let columns: [GridItem] =
        Array(repeating: .init(.flexible()), count: 3)
    
}

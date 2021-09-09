//
//  XDismmissButton.swift
//  Apple-Frameworks
//
//  Created by Владислав Белов on 09.09.2021.
//

import SwiftUI

struct XDismmissButton: View {
    @Binding var isShowingDetailView: Bool
    var body: some View {
        HStack{
            Spacer()
            Button{
               isShowingDetailView = false
            } label:{
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44, alignment: .center)
                    
            }
        }
    }
}

struct XDismmissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismmissButton(isShowingDetailView: .constant(false))
    }
}

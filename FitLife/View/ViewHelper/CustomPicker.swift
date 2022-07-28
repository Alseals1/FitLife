//
//  CustomPicker.swift
//  FitLife
//
//  Created by Alandis Seals on 7/26/22.
//

import SwiftUI

struct CustomPicker: View {
    @State var isSelected: Bool
    let numbers = ["1", "2", "3", "4", "5"]
    var body: some View {
        HStack {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(numbers, id: \.self) { index in
                    Button(action: {
                        isSelected.toggle()
                    }, label: {
                        Text(index)
                            .font(.system(size: isSelected ? 44 : 40))
                        
                        
                    })
                   
                        
                    }
                    
                }
                
            }
        }
       // .font(.system(size: 44))
    }
}

struct CustomPicker_Previews: PreviewProvider {
    static var previews: some View {
        CustomPicker(isSelected: false)
    }
}

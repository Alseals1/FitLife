//
//  GenderPicker.swift
//  FitLife
//
//  Created by Alandis Seals on 7/26/22.
//

import SwiftUI

struct GenderPicker: View {
    @State var isSelected: Bool = false
    
    let action: () -> Void
    let genderImage: String
    let genderName: String
    
    var body: some View {
        Button(action: {
            isSelected.toggle()
            action()
        }, label: {
            ZStack{
                isSelected ? Color.gray.opacity(0.5) : Color.secondaryBaseColor

                VStack(spacing: 9) {
                    Image(genderImage)
                        .resizable()
                        .frame(width: 66, height: 69)

                    Text(genderName)
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundColor(.black)
                }
                .padding(.horizontal, 44)

            }
            .clipShape(RoundedRectangle(cornerRadius: 5))
            .frame(width: 158, height: 121)
        })
    }
}

struct GenderPicker_Previews: PreviewProvider {
    static var previews: some View {
        GenderPicker(action: {}, genderImage: "basicFemaleAvatar", genderName: "Male")
    }
}
